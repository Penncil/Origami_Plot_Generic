## This is the example code to run the origami function to create origami plor

source("origami_plot.R")
library(fmsb)
library(plotrix)

#########################
######  data     ########
#########################
### ---------- Cluster 1 --------------



df1 <- read.csv("sample_data_1.csv")
df1 <- data_preparation(df1)

df2 <- read.csv("sample_data_2.csv")
df2 <- data_preparation(df2)

#col_list <- list(c(0.2,0.5,0.5))
col1 <- c(0.2,0.5,0.5)
col2 <- c(0.5,0.1,0.1)

par(mfrow = c(1,1))

origami_plot(df=df1, pcol = rgb(0.2,0.5,0.5,1),
             pfcol = rgb(0.2,0.5,0.5,0.1),
             axistype=1, 
             pty = 32,
             centerzero = TRUE)

origami_plot_pairwise(df1=df1, df2=df2, pcol1 = rgb(0.2,0.5,0.5,1), 
                      pfcol1 = rgb(0.2,0.5,0.5,0.1), 
                      pcol2 = rgb(0.5,0.1,0.1,1),
                      #pfcol2 = rgb(0.5,0.1,0.1,0.1),
                      axistype=1, pty = 32,centerzero = TRUE)

df1 <- read.csv("sample_data_1.csv")
df1 <- df1[1,1:5]
df1 <- data_preparation(df1)
weight <- c(0.25,0.1,0.35,0.2,0.1)
#weight <- c(0.4,0.2,0.15,0.13,0.12)
origami_plot_weighted(df1, weight, pcol = rgb(0.2,0.5,0.5,1), pfcol = rgb(0.2,0.5,0.5,0.1),
                      axistype=1, 
                      pty = 32,
                      centerzero = TRUE)
