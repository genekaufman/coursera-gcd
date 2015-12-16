con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)
q4 <- c(htmlCode[10],htmlCode[20],htmlCode[30],htmlCode[100])
#q4a <- sapply(q4,nchar())
#q4a <- sapply(q4,nchar(q4))
q4 <- c(nchar(htmlCode[10]),nchar(htmlCode[20]),nchar(htmlCode[30]),nchar(htmlCode[100]))
q4
