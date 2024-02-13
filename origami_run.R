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

par(mfrow = c(1,2))

origami_plot(df=df1, col = col1,
             axistype=1, 
             pty = 32,
             centerzero = TRUE)

origami_plot(df=df2, col = col2,
             axistype=1, 
             pty = 32,
             centerzero = TRUE)


par(mfrow=c(1,1))
origami_plot_pairwise(df1, df2, col1, col2,
                      axistype=1, 
                      pty = 32,
                      centerzero = TRUE)


test <- area_calculation(df1)
write.csv(test,"area_1.csv")

test_double <- area_calculation(df1_double)
write.csv(test_double,"area_2_2.csv")

