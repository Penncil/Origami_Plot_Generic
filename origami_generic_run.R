## This is the example code to run the origami function to create origami plor

source("origami_func_generic.R")
library(fmsb)
library(plotrix)

#########################
######  data     ########
#########################
### ---------- Cluster 1 --------------
df = read.csv("sample_data_generic.csv")

origami_func_generic(df,
             axistype=1 , 
             centerzero = TRUE,
             
             #custom polygon
             pcol=rgb(0.2,0.5,0.5,1),
             pfcol=rgb(0.2,0.5,0.5,0.1),
             plty = 1, # line type
             plwd= 2,
             
             #custom the grid
             cglcol="#000000",
             cglty=2,
             axislabcol="#808080",
             caxislabels=seq(0,1.2,by = 0.25),
             cglwd=0.1, 
             
             #custom labels
             vlcex=1.3,
             
             # point to mark
             full_point = NULL,
             point_col = rgb(186/255,6/255,80/255,0.9),
             point_pch = 17)





