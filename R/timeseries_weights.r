library(ggplot2)
library(plyr)
require(maps)
library(tidyverse)
library(ggthemes)
library(haven)
library(scales)
library(ggpubr)
library(ggalt)
library(zoo)
library(svglite)

#import data 
setwd("C:/github/tt-weights/R")
df <- read.csv("../data/processed/topics_over_time.csv")
#df <- read.csv("../data/processed/topics_over_time_top.csv")

#find median topic weight
median(df$weight)
#.08

unique(df$label)



p <- ggplot(df, aes(x = year, y = weight, colour = factor(label))) +
  geom_smooth() +
  #geom_hline(yintercept = 0.08, size = 1, colour="#333333") +
  labs(title = "Russian Corpus Topic Presence (2000 - 2020)", #"Russian Corpus Top-5 Topic Presence (2000 - 2020)"
       #subtitle = "Black line represents median topic weight through time",
       color="Topic name") +
  xlab("Date") + ylab("Average Yearly Topic Weight") + 
  theme_hc() 

p <- p + scale_colour_tableau("Classic 10")

p

ggsave(file="../reports/figures/selected_topics.svg", plot=p, width=18, height=9)
