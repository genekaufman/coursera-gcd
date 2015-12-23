#https://github.com/hadley/httr/blob/master/demo/oauth2-github.r

library(httr)
library(jsonlite)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at at
#    https://github.com/settings/applications. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
                   key = "aaca7ae697e3565b97e7",
                   secret = "772f4b956b97269c3e777b3d55b07cbf137a1ae1")
targetURL<-"https://api.github.com/users/jtleek/repos"

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET(targetURL, gtoken)
stop_for_status(req)
#str(req)
messy<-content(req)
cleanedup <- fromJSON(toJSON(messy))
#cleanedup <- fromJSON(messy)
str(cleanedup)
names(cleanedup)

# OR:
#req <- with_config(gtoken, GET(targetURL))
#stop_for_status(req)
#content(req)

#datasharingURL <- "https://api.github.com/search/repositories?q=datasharing+user:jtleek"
#req <- with_config(gtoken, GET(datasharingURL ))
#stop_for_status(req)
#content(req)

	