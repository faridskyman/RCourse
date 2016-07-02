#load data
acs <- read.csv(url("http://stat511.cwick.co.nz/homeworks/acs_or.csv"))



acs$household
acs[1,3]


attach(acs)

# create subset where age husb > wife only, so this is effectively a filter
sub <- subset(acs, age_husband > age_wife)


summary(acs)

# plot(acs) #took too long
plot(x = acs$age_husband, y=acs$age_wife, type = 'p')

hist(acs$number_children)

counts <-table(acs$bedrooms)

counts

barplot(counts, main="Bedroom Distribution", xlab = "Number of Bedrooms")
