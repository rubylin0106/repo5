library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

# turning it into a data.table before transforming it
diamonds<-data.table(diamonds)
diamonds
diamonds[, .(carat,cut,price)][price > 7000 & price < 10000][cut == "Premium"][order(-carat)][1:20]
