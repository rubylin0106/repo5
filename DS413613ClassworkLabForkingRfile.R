library(tidyverse)
library(ggplot2)
library(dplyr)
mpg
# My name is Pin Tzu Lin (Ruby)
# My favorite color is white
# This is my coding that generates Boxplots for transmission types
ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = drv, y = displ, fill = drv)) +
  ggtitle("Boxplots (mpg data : transmission types vs displacement)") +
  xlab("transmission types") +
  ylab("displacement") 
  


