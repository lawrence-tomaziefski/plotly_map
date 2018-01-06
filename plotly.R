#Developing Data Products Week 3 Project
#plotly.R
#by Lawrence Tomaziefski
#2018-01-06
#_______________________________________________________________________________
#Script Begins
#-------------------------------------------------------------------------------------
#Getting the Data

#Clear workspace of prior objects to free memory.
rm(list = ls())

#Set working directory
setwd('/Users/lawrence_tomaziefski/GitHub/plotly_map')
path ='/Users/lawrence_tomaziefski/GitHub/plotly_map/'

#Function to install and load libraries that are not already installed or loaded
#using very cool approach found here https://gist.github.com/stevenworthington/3178163
ipak <- function(pkg){
        new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
        if (length(new.pkg))
                install.packages(new.pkg, dependencies = TRUE)
        sapply(pkg, require, character.only = TRUE)
}
print(paste("started at :", Sys.time()))

print("loading libraries.")

#Create vector of libraries and pass into the above function.
libraries <- c("tibble","data.table","dtplyr","readr","acs",
               "lubridate","ggplot2","RColorBrewer","gridExtra",
               "devtools","ggthemes", "tidyr","knitr","R.utils","stringr",
               "reshape2","data.table","XLConnect","xlsx","maps","choroplethr",
               "choroplethrMaps","noncensus","dplyr","openxlsx","plotly")
ipak(libraries)

#Check for data folder.  Create one if none exists
if (!file.exists("./data")) { dir.create("./data")}

#Get the  "NOAA data" from the course website:
url = "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"

#Create a sourcefile variable for reference when downloading and unzipping
sourceFile <- "./data/storm_data.zip"

#Check if file has already been downloaded.  If it does not exist, then download it.
if (!file.exists(sourceFile)) {
        download.file(url, destfile = "./data/storm_data.zip", method = "libcurl")
}
#There are storm data is provided in two formats, one is a .csv, and the other is a .bz2.  
#The .bz2 is basically a compressed .csv file and will load faster.  
bunzip2(sourceFile, "StormData.csv.bz2",remove = FALSE, skip = TRUE)

#Read the loaded data into a dataframe which will serve as the base for this analysis.  
storm_data = read.csv("StormData.csv.bz2",header = TRUE, stringsAsFactors = FALSE) 

#-------------------------------------------------------------------------------------
#Cleaning the Data
#-------------------------------------------------------------------------------------
#Although the NOAA storm data base contains records dating back to 1950, the NOAA did not begin recording 
#48 event tyes in accordance with NWS Directive 10-1065 issued in 1996.  Data from earlier than 1996, was collected
#on certain weather events (https://www.ncdc.noaa.gov/stormevents/details.jsp).  Over reporting of certain weather types will 
#skew the analysis.  In light of this, this analysis is focused the last five years of recorded weather events 
#in the data set.  This allows for a ten year period for the NWS Directive 10-1065 to be fully implemented and standardized across the United States,
#Additionally, this report will not take into account inflation, so the dollar amount will be closer to today's dollars.  

storm_data_sub = storm_data %>%
        select(37,1,2,-(5:6),7:8,21:28)  #Removes most of the administrative data
        
storm_data_date = colsplit(storm_data_sub$BGN_DATE," ",c("date","time")) #Extract the date from the BGN_DATE Column
storm_data_date = storm_data_date %>%
        mutate(date = mdy(date)) %>%
        select(date)

storm_data_sub = bind_cols(storm_data_sub, storm_data_date)

storm_data_sub = storm_data_sub %>%
        mutate(year = year(date)) %>%
        filter(year >= 1996) %>%
        select(year,4:5,8:13)
str(storm_data_sub)
  
#Rename the column names to be more intuitive and user friendly. 
colnames(storm_data_sub) = c("year","state","event_type","fatalities",
                             "injuries","property_damage","property_damage_exp",
                             "crop_damage","crop_damage_exp")

#Damage estimates.  The NOAA data set uses exponential multipliers for crop and property damage estimates.
#for the most part they are fairly self explanatory, but if more information is desired refer to the reference page
#at the following site https://rstudio-pubs-static.s3.amazonaws.com/58957_37b6723ee52b455990e149edde45e5b6.html.
#A total casualty count per event was added simply by adding number of injuries to the number of fatalities. Similarly, the total ecomonic
#cost by event was calculated by adding crop and property damage.  
property_damage_exps = unique(storm_data_sub$property_damage_exp)
prop_multiplier = data.frame(property_damage_exp= c("B","M", "K", 0,""), prop_multiplier = c(1000000000,1000000,1000,10,0))
storm_data_sub = left_join(storm_data_sub,prop_multiplier, by = "property_damage_exp")
crop_multiplier = data.frame(crop_damage_exp= c("B","M", "K", 0,""), crop_multiplier = c(1000000000,1000000,1000,10,0))
storm_data_sub = left_join(storm_data_sub, crop_multiplier, by = "crop_damage_exp")

storm_data_estimates = storm_data_sub %>%
        mutate(property_damage = property_damage * prop_multiplier) %>%
        mutate(crop_damage = crop_damage * crop_multiplier) %>%
        mutate(total_casualties = fatalities + injuries) %>% 
        mutate(total_economic_cost = crop_damage + property_damage) %>%
        select(2:3,crop_damage,property_damage,total_economic_cost)

#Storm Event Catgorization.  Storm event types were grouped into categories in which they best fit.  
#The following wikipedia page found at https://en.wikipedia.org/wiki/Severe_weather_terminology_(United_States) was useful in determining categories.  

event_type_table = data.table(event_type = unique(storm_data_estimates$event_type))
event_type = unique(event_type_table$event_type)
maritime_event = unique(grep("astromomical|surf|marine|rip|seiche|tide|waterspout|surge", event_type, ignore.case = TRUE, value = TRUE))
particulates = unique(grep("fog|smoke|dust|volcanic", event_type, ignore.case = TRUE, value = TRUE))
fire = unique(grep("fire", event_type, ignore.case = TRUE, value = TRUE))
flooding = unique(grep("flood|flow|rain|tsunami|slide", event_type, ignore.case = TRUE, value = TRUE))
severe_storm = unique(grep("lightning|thunderstorm|tornado|tstm|funnel|strong|high wind", event_type, ignore.case = TRUE, value = TRUE))
winter = unique(grep("avalanche|blizzard|freeze|hail|snow|sleet|winter|ice", event_type, ignore.case = TRUE, value = TRUE))
temperature =  unique(grep("chill|drought|heat", event_type, ignore.case = TRUE, value = TRUE))
tropical = unique(grep("tropical|hurricane", event_type, ignore.case = TRUE, value = TRUE))
storm_class = data.frame(event_type = c(maritime_event, particulates, fire, flooding, severe_storm, winter, temperature, tropical),
                         classification = c(
                        c(rep("Maritime Events", length(maritime_event))),
                        c(rep("Particulates", length(particulates))),
                        c(rep("Wildfires", length(fire))), 
                        c(rep("Flooding Events", length(flooding))),  
                        c(rep("Severe Storms", length(severe_storm))),
                        c(rep("Winter Weather", length(winter))),
                        c(rep("Extereme Temperatures", length(temperature))),
                        c(rep("Tropical Storms", length(tropical)))))

storm_class = storm_class %>%
        filter(!event_type %in% c(grep("marine", storm_class$event_type, ignore.case = T, value = TRUE)) | !classification == "Severe Storms") %>%
        filter(!event_type %in% c(grep("marine", storm_class$event_type, ignore.case = T, value = TRUE)) | !classification == "Winter Weather")
#Join the categories to the data set that has the damage estimates calculated in the previous section.
storm_data_estimates_class = left_join(storm_data_estimates, storm_class, by = "event_type")



storm_data_estimates_class = storm_data_estimates_class%>%
        filter(!is.na(classification)) %>%
        group_by(state,classification) %>%
        summarize(crop_damage = sum(crop_damage),
                  property_damage = sum(property_damage))

data(states)
state_area = states %>% select(1,6)

storm_data_estimates_area = left_join(storm_data_estimates_class,state_area, by="state")

storm_data_estimates_area$area = as.numeric(storm_data_estimates_area$area)

storm_data_estimates_per = storm_data_estimates_area %>%
        mutate(crop_damage = round(crop_damage/area,2),property_damage = round(property_damage/area,2))


#Manipulate the data set to faciliate builing the Plotly Choropleth Map 
PD= storm_data_estimates_per %>%
        select(1,2,4) %>%
        spread(classification,property_damage)
colnames(PD)= (c("state",
                "et.pd",
                 "fe.pd",
                 "me.pd",
                 "p.pd",
                 "ss.pd",
                 "ts.pd",
                 "w.pd",
                 "ww.pd"))

CD= storm_data_estimates_per %>%
        select(1,2,3) %>%
        spread(classification,crop_damage)
        
        colnames(CD)= (c("state",
                         "et.cd",
                         "fe.cd",
                         "me.cd",
                         "p.cd",
                         "ss.cd",
                         "ts.cd",
                         "w.cd",
                         "ww.cd"))

state_data = left_join(PD, CD, by = "state")

state_data[is.na(state_data)] = 0
total_cost = within(state_data,{total_cost = rowSums(state_data[,2:17])})



total_cost_hover = total_cost %>%
        mutate(hover= paste(state,"<br>",
    "Weather Event (Property Damage, Crop Damage) $ per square mile","<br>",
    "Extreme Temperatures ( ", et.pd, ", ", et.cd, " )", "<br>",
    "Flooding Events ( ", fe.pd, ", ", fe.cd, " )", "<br>",
    "Maritime Events ( ", me.pd, ", ", me.cd, " )", "<br>", 
    "Particulates ( ", p.pd, ", ", p.cd, " )", "<br>",
    "Severe Storms ( ", ss.pd, ", ", ss.cd, " )", "<br>",
    "Tropical Storms ( ", ts.pd, ", ", ts.cd, " )", "<br>",
    "Wild Fires ( ", w.pd, ", ", w.cd, " )", "<br>",
    "Winter Weather ( ", ww.pd, ", ", ww.cd, " )"))

#Building the Ploty Choropleth Map, see https://plot.ly/r/choropleth-maps/
# Give state boundaries a white border
l = list(color = toRGB("white"), width = 2)
# Specify some map projection/options
g = list(
        scope = 'usa',
        projection = list(type = 'albers usa'),
        showlakes = TRUE,
        lakecolor = toRGB('white'))

p = plot_geo(total_cost_hover, locationmode = 'USA-states') %>%
        add_trace(
                z = ~total_cost,zauto = F, zmax = 800000, text = ~hover, locations = ~state,
                color = ~total_cost, colors = 'Reds'
        ) %>%
        colorbar(title = "USD per square mile") %>%
        layout(
                title = 'Property and Crop Damage Caused by Weather Events by State (1996-2011)',
                geo = g
        )


#_______________________________________________________________________________
#Script Ends
#-------------------------------------------------------------------------------------
