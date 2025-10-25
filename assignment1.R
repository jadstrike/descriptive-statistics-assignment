data <- read.csv("6- infectious-and-parasitic-diseases-death-rate-who-mdb.csv")

colnames(data)

names(data)[names(data) == "Age.standardized.deaths.that.are.from.infectious.and.parasitic.diseases.per.100.000.people..in.both.sexes.aged.all.ages"] <- "DeathRate"

head(data[, c("Entity", "Code", "Year", "DeathRate")], 5)

summary(data$DeathRate)
sd(data$DeathRate, na.rm=TRUE)  
length(na.omit(data$DeathRate))
sum(data$DeathRate < 30, na.rm = TRUE)

png("infectious_disease_deathrates.png")

hist(data$DeathRate,
     breaks = 30,
     col = "steelblue",
     border = "white",
     main = "Global Infectious Disease Death Rates (1950–2021)",
     xlab = "Deaths per 100,000 population",
     ylab = "Number of country-year observations",
     xlim = c(0, 200))

dev.off()

