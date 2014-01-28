library(ggplot2)

gDat <- read.delim("data/gapminder-data.txt")
str(gDat)

tinyDat <- subset(gDat,
                  country %in% c("Cambodia", "Rwanda", "Poland") &
                    year > 1995)
str(tinyDat)

tinyDat <- droplevels(tinyDat)
str(tinyDat)

ggplot(tinyDat, aes(x = year, y = lifeExp, group = country)) +
  geom_line(aes(color = country))

aggregate(lifeExp ~ country, tinyDat, mean)

tinyDat$country <- with(tinyDat, reorder(country, -1 * lifeExp))
str(tinyDat)

ggplot(tinyDat, aes(x = year, y = lifeExp, group = country)) +
  geom_line(aes(color = country))


## writing to file
## write.table() ... read.table()
levels(tinyDat$country)
write.table(tinyDat, file = "results/tinyDat.txt", quote = FALSE,
            row.names = FALSE, sep = "\t")
rm(tinyDat)
tinyDat <- read.delim("results//tinyDat.txt")
levels(tinyDat$country)

tinyDat$country <- with(tinyDat, reorder(country, -1 * lifeExp))

## saveRDS() ... readRDS()
levels(tinyDat$country)
saveRDS(tinyDat, "results/tinyDat.rds")
rm(tinyDat)
## go away for 6 months
## regain interest in project
tinyDat <- readRDS("results/tinyDat.rds")
levels(tinyDat$country)

## dput() ... dget()
levels(tinyDat$country)
dput(tinyDat, "results/tinyDat-DPUT.txt")
rm(tinyDat)
tinyDat <- dget("results/tinyDat-DPUT.txt")
levels(tinyDat$country)
