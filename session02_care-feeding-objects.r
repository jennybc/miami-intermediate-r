gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)

gDat <- read.delim("gapminder-data.txt")
gDat <- read.table("gapminder-data.txt",
                   header = TRUE, sep = "\t", quote = "\"")

# display data
gDat
str(gDat)

head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(gDat)
head(rownames(gDat))
length(gDat)
summary(gDat)
str(gDat)

gDat$lifeExp

summary(gDat$lifeExp)

hist(gDat$lifeExp)

class(gDat$country)
str(gDat)
table(gDat$continent)
levels(gDat$continent)
nlevels(gDat$continent)

subset(gDat, subset = country == "Cambodia")
cambodiaData <- subset(gDat, subset = country == "Cambodia")
subset(gDat, subset = year == 1952, select = c(year, country))
subset(gDat, subset = country %in% c("Japan", "Belgium"))

## exercise
## get data for which life expectancy is less than 32 years
## assign it to an object
## how many rows? how many observations per continent?

shortLife <- subset(gDat, subset = lifeExp < 32)
str(shortLife)
shortLife
table(shortLife$continent)

plot(lifeExp ~ year, gDat, subset = country == "Cambodia")
lm(lifeExp ~ year, gDat, subset = country == "Cambodia")

mean(lifeExp, gDat)
mean(gDat$lifeExp)
with(gDat, mean(lifeExp))

with(subset(gDat, country == "Cambodia"),
     cor(lifeExp, gdpPercap))

x <- 3 * 4
x
is.vector(x)
length(x)
x[1]
x[2]
x[0]
x[5] <- 10
x

x <- 1:4
x
x^2

round(rnorm(n, mean = c(0, 100, 10000)), 2)

(y <- 1:3)
(z <- 3:7)
y + z

(y <- 1:5)
(z <- 1:10)
y + z

x <- c(1, 4, 9)
x <- c("cabbage", pi, 0.3, TRUE)
str(x)

x <- list("cabbage", pi, 0.3, TRUE)
str(x)
x

x <- -3:3
str(x)
y <- x < 0
y
x
x <- c("jenny", "bernhard")
str(x)
x
gDat$country


month.abb
month.name
(x <- cbind(month.abb, month.name))

(x <- matrix(LETTERS, ncol = 2))

(x <- data.frame(month.num = 1:12,
                 I(month.abb),
                 I(month.name)))

(x <- round(rnorm(8), 2))
set.seed(1)
(x <- round(rnorm(8), 2))
names(x) <- letters[seq_along(x)]
x[4]
x[c(3, 5, 8)]
x[-7]
x < 0
x[x < 0]
which(x < 0)
x[c(TRUE, FALSE)]
x["b"]
x[c("a", "e", "g")]

(x <- cbind(month.abb, month.name))
x[2, 2]
