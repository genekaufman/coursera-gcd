download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv","q3_3_GDP.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ","q3_3_edu.csv")
gdp<-read.csv("q3_3_GDP.csv")
edu<-read.csv("q3_3_edu.csv")
names(gdp)[1]<-"CountryCode"
names(gdp)[2]<-"GDP_Rank"
names(gdp)[4]<-"Country"
names(gdp)[5]<-"GDP"

newgdp<-subset(gdp,select=c(CountryCode,GDP_Rank,Country,GDP))
