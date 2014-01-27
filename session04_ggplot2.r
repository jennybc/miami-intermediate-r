library(ggplot2)

gDat <- read.delim("gapminder-data.txt")
str(gDat)

p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp))
p

p + geom_point()

p + geom_point() + scale_x_log10()

p <- p + scale_x_log10()
p + geom_point()

p + geom_point(aes(color = continent))

p + geom_point(alpha = 1/3, size = 3)

p + geom_point(alpha = 1/3, size = 3) + geom_smooth()

p + geom_point(alpha = 1/3, size = 3) +
  geom_smooth(lwd = 3, se = FALSE)

p + geom_point(alpha = 1/3, size = 3) +
  geom_smooth(lwd = 3, se = FALSE, method = "lm")

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_point()

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_jitter()

ggplot(gDat, aes(x = continent, y = lifeExp)) +
  geom_jitter(position = position_jitter(width = 0.1), alpha = 1/4)

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_boxplot()

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_boxplot() +
  geom_jitter(position = position_jitter(width = 0.1), alpha = 1/4) 

## quantitative variable