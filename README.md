# Economic Cost of Weather Events in the United States from 1996 to 2011
Lawrence A. Tomaziefski, 6 January 2018  


#####***Synopsis***
Weather has a profound effect on everyone’s everyday life. In most cases, the weather can dictate what one chooses to do or don’t do based on the risk presented by a the weather outside. But in extreme cases, weather events can have a devastating impact on the overall health and economic viability of a population. Between 1996 and 2011, the U.S. National Oceanic and Atmospheric Administration (NOAA) estimates that weather events caoused nearly $400 billion property and crop damages.   

Since 1996, the NOAA has classified weather events into 48 categories.  Based on similarity of weather events in those 48 categories, this report aggregates the NOAA's categories into  8 broader classifications.  The following list is a description of the types of events in each aggregated category.  
    -  Winter Weather: blizzard, snow storms, and ice storms.  
    -  Severe Storms: thunder storms, tornadoes, or storms that involve high winds.  
    -  Flooding Events: rain events that cause flash flooding or flooding in general, tsunamis and landslides are included in this category.  
    -  Extreme Temperatures: extremely hot or cold weather, an example is a drought.  
    -  Maritime Events: weather events associated with large bodies of water.  
    -  Wildfires: fires caused by natural events.  
    -  Particulates: fog and dust.  
    -  Tropical Storms: weather events associated with tropical depressions, and hurricanes.  

The next section contain an interactive choropleth map that highlights the total economic damage caused by weather event type.  The map was produced using the R "plotly" package, and examople code was found at https://plot.ly/r/choropleth-maps/.  
The intent of this report is to be a self-contained product, all R-Code used to produce this report is included.

***  

<!--html_preserve--><div id="815369ba95de" style="width:768px;height:768px;" class="plotly html-widget"></div>
<script type="application/json" data-for="815369ba95de">{"x":{"visdat":{"81534dd72cbe":["function () ","plotlyVisDat"]},"cur_data":"81534dd72cbe","attrs":{"81534dd72cbe":{"locationmode":"USA-states","alpha":1,"sizes":[10,100],"z":{},"zauto":false,"zmax":800000,"text":{},"locations":{},"color":{},"colors":"Reds"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"mapType":"geo","scene":{"zaxis":{"title":"total_cost"}},"geo":{"domain":{"x":[0,1],"y":[0,1]},"scope":"usa","projection":{"type":"albers usa"},"showlakes":true,"lakecolor":"rgba(255,255,255,1)"},"hovermode":"closest","showlegend":false,"legend":{"y":0.5,"yanchor":"top"},"title":"Economic Cost of Weather Events in the United States from 1996 to 2011"},"source":"A","config":{"modeBarButtonsToAdd":[{"name":"Collaborate","icon":{"width":1000,"ascent":500,"descent":-50,"path":"M487 375c7-10 9-23 5-36l-79-259c-3-12-11-23-22-31-11-8-22-12-35-12l-263 0c-15 0-29 5-43 15-13 10-23 23-28 37-5 13-5 25-1 37 0 0 0 3 1 7 1 5 1 8 1 11 0 2 0 4-1 6 0 3-1 5-1 6 1 2 2 4 3 6 1 2 2 4 4 6 2 3 4 5 5 7 5 7 9 16 13 26 4 10 7 19 9 26 0 2 0 5 0 9-1 4-1 6 0 8 0 2 2 5 4 8 3 3 5 5 5 7 4 6 8 15 12 26 4 11 7 19 7 26 1 1 0 4 0 9-1 4-1 7 0 8 1 2 3 5 6 8 4 4 6 6 6 7 4 5 8 13 13 24 4 11 7 20 7 28 1 1 0 4 0 7-1 3-1 6-1 7 0 2 1 4 3 6 1 1 3 4 5 6 2 3 3 5 5 6 1 2 3 5 4 9 2 3 3 7 5 10 1 3 2 6 4 10 2 4 4 7 6 9 2 3 4 5 7 7 3 2 7 3 11 3 3 0 8 0 13-1l0-1c7 2 12 2 14 2l218 0c14 0 25-5 32-16 8-10 10-23 6-37l-79-259c-7-22-13-37-20-43-7-7-19-10-37-10l-248 0c-5 0-9-2-11-5-2-3-2-7 0-12 4-13 18-20 41-20l264 0c5 0 10 2 16 5 5 3 8 6 10 11l85 282c2 5 2 10 2 17 7-3 13-7 17-13z m-304 0c-1-3-1-5 0-7 1-1 3-2 6-2l174 0c2 0 4 1 7 2 2 2 4 4 5 7l6 18c0 3 0 5-1 7-1 1-3 2-6 2l-173 0c-3 0-5-1-8-2-2-2-4-4-4-7z m-24-73c-1-3-1-5 0-7 2-2 3-2 6-2l174 0c2 0 5 0 7 2 3 2 4 4 5 7l6 18c1 2 0 5-1 6-1 2-3 3-5 3l-174 0c-3 0-5-1-7-3-3-1-4-4-5-6z"},"click":"function(gd) { \n        // is this being viewed in RStudio?\n        if (location.search == '?viewer_pane=1') {\n          alert('To learn about plotly for collaboration, visit:\\n https://cpsievert.github.io/plotly_book/plot-ly-for-collaboration.html');\n        } else {\n          window.open('https://cpsievert.github.io/plotly_book/plot-ly-for-collaboration.html', '_blank');\n        }\n      }"}],"cloud":false},"data":[{"colorbar":{"title":"USD per square mile","ticklen":2,"len":0.5,"y":1,"lenmode":"fraction","yanchor":"top"},"colorscale":[["0","rgba(255,245,240,1)"],["6.90601098870203e-05","rgba(255,245,240,1)"],["0.000824309177323082","rgba(255,245,240,1)"],["0.00276139214694929","rgba(255,245,239,1)"],["0.00573362425398206","rgba(255,244,239,1)"],["0.00683816169312567","rgba(255,244,238,1)"],["0.0113697949481401","rgba(255,243,237,1)"],["0.0126510792342359","rgba(255,243,237,1)"],["0.0156197881337898","rgba(255,242,236,1)"],["0.0204713220252067","rgba(255,242,235,1)"],["0.023620388853045","rgba(255,241,234,1)"],["0.0268664863781312","rgba(255,240,234,1)"],["0.0302123357769735","rgba(255,240,233,1)"],["0.035035925783029","rgba(255,239,232,1)"],["0.0427322023559949","rgba(255,238,230,1)"],["0.0477226614111021","rgba(255,237,228,1)"],["0.0637065084918145","rgba(255,234,225,1)"],["0.130842486364522","rgba(254,222,208,1)"],["0.268431088260017","rgba(252,181,154,1)"],["0.495545469497162","rgba(251,108,75,1)"],["1","rgba(103,0,13,1)"]],"showscale":true,"locationmode":"USA-states","z":[474.16,206716.91,0,0,64031.37,2574713.54,33639.03,783572.03,25105.03,32157.13,2305975.11,77788.11,660320.2,53585.26,0,1901594.32,32822.37,120440.87,2201.62,43460.83,73088.51,30944.01,60389.53,1186500.96,0,0,0,0,0,0,116775.18,111634.79,14762.44,30663.61,53248.49,92169.61,634974.15,2095.94,173747.71,79880.3,42588.81,20967.36,409153.39,14970.71,6995.85,82053.47,124330.97,68614.22,9917.76,76919.94,0,0,0,814710.71,0,91372.33,15846,6226.29,0,143139.55,105188.35,7907.4,52383.37,293519.04,154304.31,17857.78,62094.35,37844.15,1717.11,0],"zauto":false,"zmax":800000,"text":["AK <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  320.28 ,  0.01  ) <br> Maritime Events (  55.7 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  63.84 ,  0.27  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  25.76 ,  0.02  ) <br> Winter Weather (  8.25 ,  0.03  )","AL <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  3.88  ) <br> Flooding Events (  27379.04 ,  321.28  ) <br> Maritime Events (  242.26 ,  0  ) <br> Particulates (  12.11 ,  0  ) <br> Severe Storms (  101304.46 ,  231.05  ) <br> Tropical Storms (  75746.42 ,  631.67  ) <br> Wild Fires (  2 ,  0  ) <br> Winter Weather (  815.81 ,  26.93  )","AM <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","AN <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","AR <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  13.18 ,  49.9  ) <br> Flooding Events (  11819.39 ,  2751.02  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  31560.96 ,  30.26  ) <br> Tropical Storms (  82.07 ,  148.76  ) <br> Wild Fires (  154.79 ,  19.02  ) <br> Winter Weather (  17239.73 ,  162.29  )","AS <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  1719192.71 ,  16888.02  ) <br> Maritime Events (  50585.94 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  2682.29 ,  2135.42  ) <br> Tropical Storms (  781901.04 ,  1328.12  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","AZ <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  10.36 ,  0  ) <br> Flooding Events (  839.63 ,  26.38  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  19.46 ,  0  ) <br> Severe Storms (  4164.75 ,  1.67  ) <br> Tropical Storms (  0 ,  1755.79  ) <br> Wild Fires (  1955.2 ,  0  ) <br> Winter Weather (  24861.83 ,  3.96  )","CA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  1.45 ,  3102.86  ) <br> Flooding Events (  740569.12 ,  6462.92  ) <br> Maritime Events (  158.34 ,  0  ) <br> Particulates (  89.41 ,  0.63  ) <br> Severe Storms (  1160.09 ,  552.52  ) <br> Tropical Storms (  0 ,  28.36  ) <br> Wild Fires (  27788.17 ,  888.26  ) <br> Winter Weather (  85.94 ,  2683.96  )","CO <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0.96 ,  0  ) <br> Flooding Events (  4197.93 ,  54.96  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  4.32 ,  0  ) <br> Severe Storms (  2434.82 ,  237.48  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  2934.19 ,  0.24  ) <br> Winter Weather (  14132.36 ,  1107.77  )","CT <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  8338.89 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  5148.74 ,  0  ) <br> Tropical Storms (  11979.24 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  6684.27 ,  5.99  )","DC <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  73.21  ) <br> Flooding Events (  384231.33 ,  0  ) <br> Maritime Events (  1098.1 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  51465.59 ,  0  ) <br> Tropical Storms (  1868228.4 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  878.48 ,  0  )","DE <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  14146.82  ) <br> Flooding Events (  35612.06 ,  0  ) <br> Maritime Events (  534.76 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  11351.54 ,  97.72  ) <br> Tropical Storms (  8653.38 ,  0  ) <br> Wild Fires (  2.43 ,  0  ) <br> Winter Weather (  7243.56 ,  145.84  )","FL <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  1998.8  ) <br> Flooding Events (  24628.4 ,  14183.36  ) <br> Maritime Events (  1780.86 ,  0  ) <br> Particulates (  29.97 ,  0  ) <br> Severe Storms (  73519.09 ,  5590.76  ) <br> Tropical Storms (  497230.35 ,  23821.81  ) <br> Wild Fires (  7012.28 ,  0  ) <br> Winter Weather (  764.87 ,  9759.65  )","GA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  12182.98  ) <br> Flooding Events (  9875.04 ,  39.1  ) <br> Maritime Events (  0.31 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  21755.62 ,  700.14  ) <br> Tropical Storms (  381.67 ,  37.37  ) <br> Wild Fires (  471.79 ,  0  ) <br> Winter Weather (  5407.97 ,  2733.27  )","GM <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","GU <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  42962.26 ,  2712.26  ) <br> Maritime Events (  5622.64 ,  4009.43  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  6542.45 ,  589.62  ) <br> Tropical Storms (  1342759.43 ,  495216.98  ) <br> Wild Fires (  1179.25 ,  0  ) <br> Winter Weather (  0 ,  0  )","HI <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  15.5  ) <br> Flooding Events (  28510.54 ,  294.57  ) <br> Maritime Events (  2155.04 ,  232.56  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  547.21 ,  522.48  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  192.28 ,  352.19  ) <br> Winter Weather (  0 ,  0  )","IA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  11479.7 ,  26818.8  ) <br> Flooding Events (  27959.11 ,  28143.75  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  6.43 ,  0  ) <br> Severe Storms (  11358.96 ,  2803.28  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  19.54 ,  0  ) <br> Winter Weather (  5495.41 ,  6355.89  )","ID <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  1491.42 ,  0.3  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.18 ,  0  ) <br> Severe Storms (  307.91 ,  72.3  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  128.83 ,  4.61  ) <br> Winter Weather (  119.19 ,  76.88  )","IL <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  5045.57  ) <br> Flooding Events (  15931.03 ,  1023.28  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  1.79 ,  0  ) <br> Severe Storms (  16994.83 ,  1928.39  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  37.68 ,  0  ) <br> Winter Weather (  1866.48 ,  631.78  )","IN <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  2011.52  ) <br> Flooding Events (  31571.72 ,  21697.09  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  14.33 ,  0  ) <br> Severe Storms (  15104.66 ,  100.47  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  2433.14 ,  155.58  )","KS <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  1.36 ,  1901.85  ) <br> Flooding Events (  4746.97 ,  466.24  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  1.94 ,  0  ) <br> Severe Storms (  11809.55 ,  582.99  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  31.79 ,  0.36  ) <br> Winter Weather (  8579.07 ,  2821.89  )","KY <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0.62 ,  5594.75  ) <br> Flooding Events (  19213.12 ,  719.52  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  17182.18 ,  459.93  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0.62 ,  0  ) <br> Winter Weather (  16984.83 ,  233.96  )","LA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  10.51 ,  12108.28  ) <br> Flooding Events (  16773.53 ,  200.15  ) <br> Maritime Events (  655936.5 ,  0  ) <br> Particulates (  5.42 ,  0  ) <br> Severe Storms (  23169.75 ,  103.46  ) <br> Tropical Storms (  462053.89 ,  11281.25  ) <br> Wild Fires (  26.3 ,  47.71  ) <br> Winter Weather (  4658.41 ,  125.8  )","LC <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","LE <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","LH <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","LM <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","LO <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","LS <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","MA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  33888.34 ,  0  ) <br> Maritime Events (  215.57 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  63747.03 ,  152.84  ) <br> Tropical Storms (  4206.37 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  14558.97 ,  6.06  )","MD <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  9428  ) <br> Flooding Events (  13624.47 ,  124.33  ) <br> Maritime Events (  5122.44 ,  0.47  ) <br> Particulates (  0.09 ,  0  ) <br> Severe Storms (  30228.43 ,  87.74  ) <br> Tropical Storms (  51043.11 ,  121.02  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  1658.98 ,  195.71  )","ME <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  4507.68 ,  0.15  ) <br> Maritime Events (  99.71 ,  0  ) <br> Particulates (  0.3 ,  0  ) <br> Severe Storms (  343.98 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  9806.71 ,  3.91  )","MI <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0.43 ,  2576.61  ) <br> Flooding Events (  5581 ,  363.22  ) <br> Maritime Events (  3.78 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  12353.35 ,  877.87  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  128.07 ,  17.18  ) <br> Winter Weather (  8614.39 ,  147.71  )","MN <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  7.52 ,  0  ) <br> Flooding Events (  18313.43 ,  1379.32  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.24 ,  0  ) <br> Severe Storms (  20049.13 ,  562.02  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  47.91 ,  0.04  ) <br> Winter Weather (  11929.62 ,  959.26  )","MO <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  6.87 ,  442.48  ) <br> Flooding Events (  8775.19 ,  9317.62  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  55647.26 ,  549.53  ) <br> Tropical Storms (  2.15 ,  0  ) <br> Wild Fires (  30.31 ,  0  ) <br> Winter Weather (  17288.51 ,  109.69  )","MS <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  11.53 ,  66.57  ) <br> Flooding Events (  30495.26 ,  269.45  ) <br> Maritime Events (  236121.89 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  34055.51 ,  1424.73  ) <br> Tropical Storms (  298186.9 ,  31749.95  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  2369.04 ,  223.32  )","MT <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  6.73  ) <br> Flooding Events (  282.9 ,  4.59  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  1.26 ,  0  ) <br> Severe Storms (  615.09 ,  86.82  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  150.58 ,  6.8  ) <br> Winter Weather (  717.16 ,  224.01  )","NC <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  248.49  ) <br> Flooding Events (  7543.93 ,  4930.44  ) <br> Maritime Events (  788.42 ,  0  ) <br> Particulates (  1.4 ,  0  ) <br> Severe Storms (  14579.97 ,  3145.23  ) <br> Tropical Storms (  105662.59 ,  29653.62  ) <br> Wild Fires (  49.54 ,  0  ) <br> Winter Weather (  6478.36 ,  665.72  )","ND <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  5.09 ,  0  ) <br> Flooding Events (  57456.13 ,  1092.93  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  4975.64 ,  2997.92  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  8.49 ,  0  ) <br> Winter Weather (  10862.6 ,  2481.5  )","NE <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  101.71 ,  9323.16  ) <br> Flooding Events (  1885.64 ,  1593.72  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  7.12 ,  0  ) <br> Severe Storms (  5905.3 ,  2672.47  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  32.37 ,  64.74  ) <br> Winter Weather (  13314.35 ,  7688.23  )","NH <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  11120.03 ,  21.5  ) <br> Maritime Events (  65.56 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  1912.03 ,  0  ) <br> Tropical Storms (  2.69 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  7845.55 ,  0  )","NJ <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  10209.29  ) <br> Flooding Events (  370284.58 ,  95.71  ) <br> Maritime Events (  1148.55 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  13543.89 ,  179.05  ) <br> Tropical Storms (  2392.8 ,  0  ) <br> Wild Fires (  160.8 ,  0  ) <br> Winter Weather (  8954.95 ,  2183.77  )","NM <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  24.04 ,  118.36  ) <br> Flooding Events (  623.26 ,  43.98  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.74 ,  0  ) <br> Severe Storms (  380.13 ,  4.3  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  12728.14 ,  0.12  ) <br> Winter Weather (  987.52 ,  60.12  )","NV <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  6729.48 ,  0.18  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  4.76 ,  0  ) <br> Severe Storms (  209.35 ,  0.97  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0.09 ,  0  ) <br> Winter Weather (  50.12 ,  0.9  )","NY <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  8.47 ,  1012.59  ) <br> Flooding Events (  60883.93 ,  133.63  ) <br> Maritime Events (  795.26 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  11491.66 ,  255.57  ) <br> Tropical Storms (  0.08 ,  0  ) <br> Wild Fires (  2.06 ,  0  ) <br> Winter Weather (  5630.64 ,  1839.58  )","OH <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  4851.78  ) <br> Flooding Events (  38750.98 ,  3191.6  ) <br> Maritime Events (  140.94 ,  0  ) <br> Particulates (  13.63 ,  0  ) <br> Severe Storms (  32564.22 ,  411.03  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  44314 ,  92.79  )","OK <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  468.81 ,  15690.16  ) <br> Flooding Events (  1170.35 ,  9.83  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  1.42 ,  0  ) <br> Severe Storms (  38018.49 ,  1.9  ) <br> Tropical Storms (  0.36 ,  0  ) <br> Wild Fires (  436.38 ,  3.58  ) <br> Winter Weather (  12694.6 ,  118.34  )","OR <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  233.04  ) <br> Flooding Events (  7680.86 ,  183.64  ) <br> Maritime Events (  20.62 ,  0  ) <br> Particulates (  3.3 ,  0  ) <br> Severe Storms (  1138.88 ,  10.86  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  174.66 ,  5.47  ) <br> Winter Weather (  394.99 ,  71.44  )","PA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  2.32 ,  11501.56  ) <br> Flooding Events (  54792.02 ,  97.72  ) <br> Maritime Events (  2.65 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  7834.56 ,  54.28  ) <br> Tropical Storms (  62.87 ,  0  ) <br> Wild Fires (  30.99 ,  0  ) <br> Winter Weather (  2475.23 ,  65.74  )","PH <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","PK <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","PM <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","PR <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  1422.48 ,  0  ) <br> Flooding Events (  90244.39 ,  17231.86  ) <br> Maritime Events (  808.53 ,  0  ) <br> Particulates (  85.35 ,  0  ) <br> Severe Storms (  4920.51 ,  2.28  ) <br> Tropical Storms (  539982.93 ,  157780.94  ) <br> Wild Fires (  1877.67 ,  331.44  ) <br> Winter Weather (  21.76 ,  0.57  )","PZ <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","RI <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  77076.61 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  4367.38 ,  0  ) <br> Tropical Storms (  167.22 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  9761.12 ,  0  )","SC <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  884.53 ,  162.04  ) <br> Maritime Events (  5.76 ,  0  ) <br> Particulates (  1.22 ,  0  ) <br> Severe Storms (  4495.2 ,  179.46  ) <br> Tropical Storms (  1508.51 ,  653.68  ) <br> Wild Fires (  1403.16 ,  0  ) <br> Winter Weather (  6414.65 ,  137.79  )","SD <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  825.86 ,  326.18  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.56 ,  0  ) <br> Severe Storms (  1715.11 ,  229.42  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0.71 ,  0  ) <br> Winter Weather (  2380.21 ,  748.24  )","SL <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )","TN <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  109002.5 ,  105.77  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.02 ,  0  ) <br> Severe Storms (  33138.82 ,  335.42  ) <br> Tropical Storms (  19.77 ,  0  ) <br> Wild Fires (  2.37 ,  0  ) <br> Winter Weather (  515.04 ,  19.84  )","TX <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  1325.67 ,  23840.29  ) <br> Flooding Events (  6818.89 ,  424.38  ) <br> Maritime Events (  16834.43 ,  0  ) <br> Particulates (  4.71 ,  11.22  ) <br> Severe Storms (  5350.94 ,  603.77  ) <br> Tropical Storms (  36037.91 ,  15.49  ) <br> Wild Fires (  2264.96 ,  605.21  ) <br> Winter Weather (  9341.56 ,  1708.92  )","UT <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  4530.51 ,  11.92  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  14.74 ,  0  ) <br> Severe Storms (  2574.97 ,  24.42  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  67.95 ,  0.47  ) <br> Winter Weather (  675.51 ,  6.91  )","VA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0.37 ,  6871.98  ) <br> Flooding Events (  12136.38 ,  1320.52  ) <br> Maritime Events (  45.57 ,  0  ) <br> Particulates (  19.87 ,  0  ) <br> Severe Storms (  8045.83 ,  616.6  ) <br> Tropical Storms (  18200.8 ,  1902  ) <br> Wild Fires (  101.9 ,  41.35  ) <br> Winter Weather (  2440.61 ,  639.59  )","VI <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  1495.55  ) <br> Flooding Events (  25873.03 ,  0  ) <br> Maritime Events (  74.78 ,  0  ) <br> Particulates (  1495.55 ,  0  ) <br> Severe Storms (  5012.34 ,  0  ) <br> Tropical Storms (  257758.17 ,  37.39  ) <br> Wild Fires (  1660.06 ,  0  ) <br> Winter Weather (  112.17 ,  0  )","VT <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  10.41 ,  0  ) <br> Flooding Events (  145606.93 ,  2776.04  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  4.68 ,  0  ) <br> Severe Storms (  2953.53 ,  58.28  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  2854.89 ,  39.55  )","WA <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  175.97 ,  0  ) <br> Flooding Events (  6686.3 ,  317  ) <br> Maritime Events (  29.26 ,  0  ) <br> Particulates (  33.51 ,  0  ) <br> Severe Storms (  2383.03 ,  508.12  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  416.71 ,  1213.62  ) <br> Winter Weather (  851.84 ,  5242.42  )","WI <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0.73 ,  80.6  ) <br> Flooding Events (  16335.48 ,  14537.26  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.43 ,  0  ) <br> Severe Storms (  11699.3 ,  999.1  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  30.93 ,  0.04  ) <br> Winter Weather (  17144.7 ,  1265.78  )","WV <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  816.59  ) <br> Flooding Events (  31673.34 ,  71.34  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.04 ,  0  ) <br> Severe Storms (  1960.26 ,  130.31  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0.95 ,  0  ) <br> Winter Weather (  2799.24 ,  392.08  )","WY <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  275.66 ,  11.97  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0.49 ,  0  ) <br> Severe Storms (  128.14 ,  1.3  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  43.93 ,  0  ) <br> Winter Weather (  1236.31 ,  19.31  )","XX <br> Weather Event (Property Damage, Crop Damage) $ per square mile <br> Extreme Temperatures (  0 ,  0  ) <br> Flooding Events (  0 ,  0  ) <br> Maritime Events (  0 ,  0  ) <br> Particulates (  0 ,  0  ) <br> Severe Storms (  0 ,  0  ) <br> Tropical Storms (  0 ,  0  ) <br> Wild Fires (  0 ,  0  ) <br> Winter Weather (  0 ,  0  )"],"locations":["AK","AL","AM","AN","AR","AS","AZ","CA","CO","CT","DC","DE","FL","GA","GM","GU","HI","IA","ID","IL","IN","KS","KY","LA","LC","LE","LH","LM","LO","LS","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR","PA","PH","PK","PM","PR","PZ","RI","SC","SD","SL","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY","XX"],"type":"choropleth","geo":"geo","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1}},"base_url":"https://plot.ly"},"evals":["config.modeBarButtonsToAdd.0.click"],"jsHooks":{"render":[{"code":"function(el, x) { var ctConfig = crosstalk.var('plotlyCrosstalkOpts').set({\"on\":\"plotly_click\",\"persistent\":false,\"dynamic\":false,\"selectize\":false,\"opacityDim\":0.2,\"selected\":{\"opacity\":1}}); }","data":null},{"code":"function(el, x) { var ctConfig = crosstalk.var('plotlyCrosstalkOpts').set({\"on\":\"plotly_click\",\"persistent\":false,\"dynamic\":false,\"selectize\":false,\"opacityDim\":0.2,\"selected\":{\"opacity\":1}}); }","data":null}]}}</script><!--/html_preserve-->

***  

#####***Data Processing***
**System Information**  
The information of the system used to produce the analysis.  


```
               _                           
platform       x86_64-apple-darwin13.4.0   
arch           x86_64                      
os             darwin13.4.0                
system         x86_64, darwin13.4.0        
status                                     
major          3                           
minor          3.2                         
year           2016                        
month          10                          
day            31                          
svn rev        71607                       
language       R                           
version.string R version 3.3.2 (2016-10-31)
nickname       Sincere Pumpkin Patch       
```
**Date Produced**

```
[1] "2018-01-06"
```

**Getting and Loading the Data**  
The following code describes where the NOAA data was obtained and how it was loaded into R for further analysis.  In order to reproduce the results of this analysis, the researcher must set their own working directory as appropriate.  Additionally, the required packages and libraries included in the flowing code are essential to the analysis.  The researcher must have access to the CRAN directory to ensure the packages are installed properly.  


```r
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
```



 









