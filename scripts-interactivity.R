install.packages("plotly")
library(plotly)
library(tidyverse)

install.packages("gapminder")
library(gapminder)

gapminder

plot_1972 <- gapminder %>% 
  filter(year==1972) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,colour=continent))+
  geom_point()+
  scale_x_log10()

install.packages("plotly")

library(plotly)

ggplotly(plot_1972)

plot_1977 <- gapminder %>%
  filter(year==1977) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,colour=continent))+
  geom_point() +
  scale_x_log10()
 
plot_1972 <- gapminder %>% 
  filter(year==1972) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,colour=continent,size=year,text=country)) +
  geom_point()+
  scale_x_log10()+
  scale_size(range=c(1,3))+
  scale_color_brewer(palette = "Dark2")+
 

anim_gapminder <- gapminder %>% 
  filter(year==1972) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,colour=continent,text=country,frame=year)) +
  geom_point()+
  scale_x_log10()+
  scale_size(range=c(1,3))+
  scale_color_brewer(palette = "Dark2")
  
library(gganimate)
ggplotly(anim_gapminder)

#shiny lessons

a <- 20
b <- a+5
b

library(shiny)
runExample("01_hello")

