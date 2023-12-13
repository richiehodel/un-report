library(tidyverse)

library(readr)
gapminder_1997 <- read_csv("gapminder_1997.csv")
gapminder_data <- read_csv("gapminder_data.csv")
gapminder_data2 <- read_csv('gapminder_data.csv')

ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins = 20)+
  theme_classic()
ggsave("awesome_plot.jpg", width=6, height=4)

violin_plot <- ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_violin(aes(fill=continent))
ggsave("awesome_violin_plot.jpg", plot = violin_plot, width=6, height=4)


Sys.Date()

ggplot(data=gapminder_1997) + aes(x=gdpPercap)+ 
  labs(x = "GDP Per Capita")+
  aes(y=lifeExp) + labs(y= "Life Expectancy")+
  geom_point() + labs(title="Do people in wealthy countries live longer?")+
  aes(color = continent)+
  scale_color_brewer(palette = "Set1") + aes(size=pop/1000000) + 
  labs(size="Population (in millions)") + aes(shape=continent)


ggplot(data=gapminder_1997) + aes(x=gdpPercap, y=lifeExp, 
                                  color = continent,
                                  size = pop/1000000) +
  geom_point() + scale_color_brewer(palette = "Set1") +
  labs(x="GDP per capita", y="Life expectation", title=
         "Do people in wealthy countries live longer?",
       size= "Population (in millions)", color="Continent")


ggsave("inclass_plot.jpg", width=6, height=4)

gapminder_data <- read_csv("gapminder_data.csv")

dim(gapminder_data)
head(gapminder_data)

ggplot(data=gapminder_data) + aes(x=year, y=lifeExp, color=continent)+
  geom_point() + scale_color_brewer(palette = "Set1") +
  labs(x="Year", y="Life expectation", title=
         "Do people in wealthy countries live longer?",
       size= "Population (in millions)", color="Continent")

ggsave("inworkshop_plot.jpg", width=6, height=4)


?scale_color_brewer
