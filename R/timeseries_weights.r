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


#import data 
#df <- read.csv("../data/processed/topics_over_time.csv")
df <- read.csv("../data/processed/topics_over_time_top.csv")

#find median topic weight
median(df$weight)
#.08

ggplot(df, aes(x = year, y = weight, colour = label)) +
  geom_smooth() +
  geom_hline(yintercept = 0.08, size = 1, colour="#333333") +
  labs(title = "Russian Corpus Top-5 Topic Presence (2000 - 2020)",
       subtitle = "Black line represents median topic weight through time") +
  xlab("Date") + ylab("Average Yearly Topic Weight") + 
  theme_hc()
