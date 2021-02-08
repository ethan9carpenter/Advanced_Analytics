install.packages("twitteR")
library("twitteR")
library("ROAuth")
library(purrr)
library(dplyr)

# Authonitical keys


options(httr_oauth_cache=TRUE)
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)

XXX<- userTimeline("XXX", n = 3200)

novatweets_df <- tbl_df(map_df(novatweets, as.data.frame))

write.csv(novatweets_df, "XXX")

#To create a list 3200 Tweets containing a certain hashtag:
NovaNation <- searchTwitter("#NovaNation exclude:retweets", n=3200)

NovaNation_df <- tbl_df(map_df(XXX, as.data.frame))

write.csv(NovaNation_df, "NovaNation3.csv")
#By looking at the post time of the first tweet and last tweet in this dataframe,
#it suggests that there is a limit of about 10 days tweets are returned due to API reason.

#To create a list of tweets sent to a user:
tweetstoDean <- searchTwitter("@VSB_Dean exclude:retweets", n=3200)

XXX <- tbl_df(map_df(tweetstoDean, as.data.frame))

write.csv(XXX, "tweetstoDean1.csv")

tweetstoVSB <- searchTwitter("@VU_Business exclude:retweets", n=3200)

tweetstoVSB_df <- tbl_df(map_df(tweetstoVSB, as.data.frame))

write.csv(tweetstoVSB_df, "tweetstoVSB.csv")


#Using the data scraped from Twitter, analysis like frequency of word appearance, 
#instances where a word appears, and the time it appears can be done with the data 
#extracted using the above method. By analysing the number of 'favoriteCount' and 
#'retweetCount', we can shed some light on social trend and preferences. 

