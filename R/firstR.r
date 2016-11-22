library(httr)
library(XML)
library(RCurl)

# get download page url path

subpathURL = "https://www.ptt.cc/bbs/movie/index.html"
startNo = 4665
endNo = 4667

for (i in c(startNo:endNo)) {

pathURL = paste(subpathURL, i, ".html", sep="")
print(pathURL)
tempDATA = getURL(pathURL)
xmldoc = htmlParse(tempDATA, encoding = "utf-8")
title = xpathApply(xmldoc, "//div[@class=\"title\"]", xmlValue)
url = xpathApply(xmldoc, "//div[@class=\"title\"]/a//@href", xmlValue)
alltitle = data.frame(title, url)

}

