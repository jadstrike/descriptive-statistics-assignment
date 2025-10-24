
data <- read.csv("6- infectious-and-parasitic-diseases-death-rate-who-mdb(in).csv")
# View column names
colnames(data)

names(data)[names(data) == "Age.standardized.deaths.that.are.from.infectious.and.parasitic.diseases.per.100.000.people..in.both.sexes.aged.all.ages"] <- "DeathRate"

head(data[, c("Entity", "Code", "Year", "DeathRate")], 5)

summary(data$DeathRate)

