rm(list = ls(all.names = TRUE))

library(httr)
library(rjson)
library(httpuv)
library(Rfacebook)

prefix = "https://graph.facebook.com/v2.8/"
token = "EAACEdEose0cBACqISftbZAmtKgKoqzXROeYBx4wAoeTQyCBUPWO5REgk1fNR33eEUN5GWhBdpDa9eEihSoS9hOgQV6W3mYBogEqKE1hZBVomxJEUSQTNr2ZBBe6VOaUg2gNu5a9ELZCPm7EvpRNzUUZBg9i6fRfyyPyQZAZBPWACQZDZD"
attrs = "me/friends?access_token="
url = paste0(prefix, attrs, token)
res = GET(url)
data = content(res, "text")

groups = matrix(unlist(data$data))


