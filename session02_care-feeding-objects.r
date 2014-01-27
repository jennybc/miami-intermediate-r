gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)

gDat <- read.delim("gapminder-data.txt")
gDat <- read.table("gapminder-data.txt",
                   header = TRUE, sep = "\t", quote = "\"")

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