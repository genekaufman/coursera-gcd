download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg ","jeff.jpg",mode="wb")
pic<-readJPEG("jeff.jpg",native=TRUE)
quantile(pic,probs=c(30,80)/100)
