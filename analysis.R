library(twitteR)
library(jsonlite)
library(readr)

setup_twitter_oauth("xxx", "xxx", "xxx", "exxx")

#Search for icanhazpdf hashtag on Twitter
tweets <- searchTwitter("icanhazpdf", 1000)

head(tweets)


tweets[[1]]$getCreated

#asJSON(tweets, pretty=TRUE)

# Get the sauce of tweets: like Android, iPhone, TweetDeck
sources <- sapply(tweets, function(x) x$getStatusSource())
sources <- gsub("</a>", "", sources)
sources <- strsplit(sources, ">")
sources <- sapply(sources, function(x) ifelse(length(x) > 1, x[2], x[1]))
source_table = table(sources)

#tweets <- strip_retweets(tweets)
df <- twListToDF(tweets)
tweetjson <- toJSON(df, pretty = TRUE)

#Writes them out
writeLines(tweetjson, "tweets.JSON")


