API_Key <- "xxxx"
API_Secret <- "xxxx"

library(twitteR)
library(rtweet)
library(maps)
library(plotly)
library(ggplot2)


##  name you assigned to your created app
appname <- "schavan4_rtweet_tokens"


## create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = API_Key,
  consumer_secret = API_Secret)

## path of home directory
home_directory <- path.expand("~/")

## combine with name for token
file_name <- file.path(home_directory, "twitter_token.rds")

## save token to home directory
saveRDS(twitter_token, file = file_name)

##     create and save your environment variable.
cat(paste0("TWITTER_PAT=", file_name),
    file = file.path(home_directory, ".Renviron"),
    append = TRUE)


?search_tweets
state1 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("alabama"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state1 <- state1[,1:5]
state1_df <- data.frame(state1$status_id, state1$created_at, state1$user_id, state1$screen_name, state1$text)

###############################################################################################################################################################################
state2 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("alaska"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state2 <- state2[,1:5]
state2_df <- data.frame(state2$status_id, state2$created_at, state2$user_id, state2$screen_name, state2$text)

#############################################################################################################################################################################
state3 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("arizona"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state3 <- state3[,1:5]
state3_df <- data.frame(state3$status_id, state3$created_at, state3$user_id, state3$screen_name, state3$text)
#############################################################################################################################################################################
state4 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("arkansas"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state4 <- state4[,1:5]
state4_df <- data.frame(state4$status_id, state4$created_at, state4$user_id, state4$screen_name, state4$text)
#############################################################################################################################################################################
state5 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("california"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state5 <- state5[,1:5]
state5_df <- data.frame(state5$status_id, state5$created_at, state5$user_id, state5$screen_name, state5$text)
###############################################################################################################################################################################
#############################################################################################################################################################################
state6 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("colorado"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state6 <- state6[,1:5]
state6_df <- data.frame(state6$status_id, state6$created_at, state6$user_id, state6$screen_name, state6$text)

#############################################################################################################################################################################
state7 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("connecticut"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state7 <- state7[,1:5]
state7_df <- data.frame(state7$status_id, state7$created_at, state7$user_id, state7$screen_name, state7$text)

#############################################################################################################################################################################
state8 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("delaware"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state8 <- state8[,1:5]
state8_df <- data.frame(state8$status_id, state8$created_at, state8$user_id, state8$screen_name, state8$text)

#############################################################################################################################################################################
state9 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("florida"), lang = 'en', include_rts = F, 
                        since = '2017-12-01')
state9 <- state9[,1:5]
state9_df <- data.frame(state9$status_id, state9$created_at, state9$user_id, state9$screen_name, state9$text)

#############################################################################################################################################################################
state10 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("georgia"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state10 <- state10[,1:5]
state10_df <- data.frame(state10$status_id, state10$created_at, state10$user_id, state10$screen_name, state10$text)

#############################################################################################################################################################################
state11 <- search_tweets(q = "", n = 1000, geocode = lookup_coords("hawaii"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state11 <- state11[,1:5]
state11_df <- data.frame(state11$status_id, state11$created_at, state11$user_id, state11$screen_name, state11$text)

#############################################################################################################################################################################
state12 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("idaho"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state12 <- state12[,1:5]
state12_df <- data.frame(state12$status_id, state12$created_at, state12$user_id, state12$screen_name, state12$text)

#############################################################################################################################################################################
state13 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("illinois"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state13 <- state13[,1:5]
state13_df <- data.frame(state13$status_id, state13$created_at, state13$user_id, state13$screen_name, state13$text)

#############################################################################################################################################################################
state14 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("indiana"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state14 <- state14[,1:5]
state14_df <- data.frame(state14$status_id, state14$created_at, state14$user_id, state14$screen_name, state14$text)

#############################################################################################################################################################################
state15 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("iowa"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state15 <- state15[,1:5]
state15_df <- data.frame(state15$status_id, state15$created_at, state15$user_id, state15$screen_name, state15$text)

#############################################################################################################################################################################
state16 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("kansas"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state16 <- state16[,1:5]
state16_df <- data.frame(state16$status_id, state16$created_at, state16$user_id, state16$screen_name, state16$text)

#############################################################################################################################################################################
state17 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("kentucky"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state17 <- state17[,1:5]
state17_df <- data.frame(state17$status_id, state17$created_at, state17$user_id, state17$screen_name, state17$text)


#############################################################################################################################################################################
state18 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("louisiana"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state18 <- state18[,1:5]
state18_df <- data.frame(state18$status_id, state18$created_at, state18$user_id, state18$screen_name, state18$text)

#############################################################################################################################################################################
state19 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("maine"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state19 <- state19[,1:5]
state19_df <- data.frame(state19$status_id, state19$created_at, state19$user_id, state19$screen_name, state19$text)

#############################################################################################################################################################################
state20 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("maryland"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state20 <- state20[,1:5]
state20_df <- data.frame(state20$status_id, state20$created_at, state20$user_id, state20$screen_name, state20$text)

#############################################################################################################################################################################
state21 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("massachusetts"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state21 <- state21[,1:5]
state21_df <- data.frame(state21$status_id, state21$created_at, state21$user_id, state21$screen_name, state21$text)

#############################################################################################################################################################################
state22 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("michigan"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state22 <- state22[,1:5]
state22_df <- data.frame(state22$status_id, state22$created_at, state22$user_id, state22$screen_name, state22$text)

#############################################################################################################################################################################
state23 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("minnesota"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state23 <- state23[,1:5]
state23_df <- data.frame(state23$status_id, state23$created_at, state23$user_id, state23$screen_name, state23$text)

#############################################################################################################################################################################
state24 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("mississippi"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state24 <- state24[,1:5]
state24_df <- data.frame(state24$status_id, state24$created_at, state24$user_id, state24$screen_name, state24$text)

#############################################################################################################################################################################
state25 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("missouri"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state25 <- state25[,1:5]
state25_df <- data.frame(state25$status_id, state25$created_at, state25$user_id, state25$screen_name, state25$text)

#############################################################################################################################################################################
state26 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("montana"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state26 <- state26[,1:5]
state26_df <- data.frame(state26$status_id, state26$created_at, state26$user_id, state26$screen_name, state26$text)

#############################################################################################################################################################################
state27 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("nebraska"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state27 <- state27[,1:5]
state27_df <- data.frame(state27$status_id, state27$created_at, state27$user_id, state27$screen_name, state27$text)

#############################################################################################################################################################################
state28 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("nevada"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state28 <- state28[,1:5]
state28_df <- data.frame(state28$status_id, state28$created_at, state28$user_id, state28$screen_name, state28$text)

#############################################################################################################################################################################
state29 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("new hampshire"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state29 <- state29[,1:5]
state29_df <- data.frame(state29$status_id, state29$created_at, state29$user_id, state29$screen_name, state29$text)

#############################################################################################################################################################################
state30 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("new jersey"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state30 <- state30[,1:5]
state30_df <- data.frame(state30$status_id, state30$created_at, state30$user_id, state30$screen_name, state30$text)

#############################################################################################################################################################################
state31 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("new mexico"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state31 <- state31[,1:5]
state31_df <- data.frame(state31$status_id, state31$created_at, state31$user_id, state31$screen_name, state31$text)

#############################################################################################################################################################################
state32 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("new york"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state32 <- state32[,1:5]
state32_df <- data.frame(state32$status_id, state32$created_at, state32$user_id, state32$screen_name, state32$text)

#############################################################################################################################################################################
state33 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("north carolina"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state33 <- state33[,1:5]
state33_df <- data.frame(state33$status_id, state33$created_at, state33$user_id, state33$screen_name, state33$text)

#############################################################################################################################################################################
state34 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("north dakota"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state34 <- state34[,1:5]
state34_df <- data.frame(state34$status_id, state34$created_at, state34$user_id, state34$screen_name, state34$text)

#############################################################################################################################################################################
state35 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("ohio"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state35 <- state35[,1:5]
state35_df <- data.frame(state35$status_id, state35$created_at, state35$user_id, state35$screen_name, state35$text)

#############################################################################################################################################################################
state36 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("oklahoma"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state36 <- state36[,1:5]
state36_df <- data.frame(state36$status_id, state36$created_at, state36$user_id, state36$screen_name, state36$text)

#############################################################################################################################################################################
state37 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("oregon"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state37 <- state37[,1:5]
state37_df <- data.frame(state37$status_id, state37$created_at, state37$user_id, state37$screen_name, state37$text)

#############################################################################################################################################################################
state38 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("pennsylvania"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state38 <- state38[,1:5]
state38_df <- data.frame(state38$status_id, state38$created_at, state38$user_id, state38$screen_name, state38$text)

#############################################################################################################################################################################
state39 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("rhode island"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state39 <- state39[,1:5]
state39_df <- data.frame(state39$status_id, state39$created_at, state39$user_id, state39$screen_name, state39$text)

#############################################################################################################################################################################
state40 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("south carolina"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state40 <- state40[,1:5]
state40_df <- data.frame(state40$status_id, state40$created_at, state40$user_id, state40$screen_name, state40$text)

#############################################################################################################################################################################
state41 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("south dakota"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state41 <- state41[,1:5]
state41_df <- data.frame(state41$status_id, state41$created_at, state41$user_id, state41$screen_name, state41$text)

#############################################################################################################################################################################
state42 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("tennessee"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state42 <- state42[,1:5]
state42_df <- data.frame(state42$status_id, state42$created_at, state42$user_id, state42$screen_name, state42$text)

#############################################################################################################################################################################
state43 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("texas"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state43 <- state43[,1:5]
state43_df <- data.frame(state43$status_id, state43$created_at, state43$user_id, state43$screen_name, state43$text)

#############################################################################################################################################################################
state44 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("utah"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state44 <- state44[,1:5]
state44_df <- data.frame(state44$status_id, state44$created_at, state44$user_id, state44$screen_name, state44$text)

#############################################################################################################################################################################
state45 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("vermont"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state45 <- state45[,1:5]
state45_df <- data.frame(state45$status_id, state45$created_at, state45$user_id, state45$screen_name, state45$text)

#############################################################################################################################################################################
state46 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("virginia"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state46 <- state46[,1:5]
state46_df <- data.frame(state46$status_id, state46$created_at, state46$user_id, state46$screen_name, state46$text)

#############################################################################################################################################################################
state47 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("washington"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state47 <- state47[,1:5]
state47_df <- data.frame(state47$status_id, state47$created_at, state47$user_id, state47$screen_name, state47$text)

#############################################################################################################################################################################
state48 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("west virginia"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state48 <- state48[,1:5]
state48_df <- data.frame(state48$status_id, state48$created_at, state48$user_id, state48$screen_name, state48$text)

#############################################################################################################################################################################
state49 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("wisconsin"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state49 <- state49[,1:5]
state49_df <- data.frame(state49$status_id, state49$created_at, state49$user_id, state49$screen_name, state49$text)

#############################################################################################################################################################################
state50 <- search_tweets(q = "influenza", n = 1000, geocode = lookup_coords("south carolina"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state50 <- state50[,1:5]
state50_df <- data.frame(state50$status_id, state50$created_at, state50$user_id, state50$screen_name, state50$text)

#########################################################################################################################################
## additional states as follows

#############################################################################################################################################################################
state51 <- search_tweets(q = "influenza ", n = 1000, geocode = lookup_coords("district of columbia"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state51 <- state51[,1:5]
state51_df <- data.frame(state51$status_id, state51$created_at, state51$user_id, state51$screen_name, state51$text)

###################################
#############################################################################################################################################################################
state52 <- search_tweets(q = "influenza ", n = 1000, geocode = lookup_coords("new york city"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state52 <- state52[,1:5]
state52_df <- data.frame(state52$status_id, state52$created_at, state52$user_id, state52$screen_name, state52$text)

#############################################################################################################################################################################
state53 <- search_tweets(q = "influenza ", n = 1000, geocode = lookup_coords("puerto rico"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state53 <- state53[,1:5]
state53_df <- data.frame(state53$status_id, state53$created_at, state53$user_id, state53$screen_name, state53$text)

#############################################################################################################################################################################
state54 <- search_tweets(q = "influenza ", n = 1000, geocode = lookup_coords("virgin islands"), lang = 'en', include_rts = F, 
                         since = '2017-12-01')
state54 <- state54[,1:5]
state54_df <- data.frame(state54$status_id, state54$created_at, state54$user_id, state54$screen_name, state54$text)


## now drawing the heat map with the above results of week 9

new_heatmap_data <- final_excel_file
names(new_heatmap_data)

dafa <- data.frame(new_heatmap_data$STATENAME, new_heatmap_data$CODE, new_heatmap_data$`ROUND OFF LEVEL`)

# give state boundaries a white border
l <- list(color = toRGB("white"), width = 2)
# specify some map projection/options
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = TRUE,
  lakecolor = toRGB('white')
)

map2 <- plot_geo(dafa, locationmode = 'USA-states') %>%
  add_trace(
    z = ~dafa$new_heatmap_data..ROUND.OFF.LEVEL., locations = ~dafa$new_heatmap_data.CODE,
    color = ~dafa$new_heatmap_data..ROUND.OFF.LEVEL., colors = 'Purples'
  ) %>%
  colorbar(title = "flu activity") %>%
  layout(
    title = 'FLU ACTIVITY HEAT MAP OF UNITED STATES for week 9 from twitter',
    geo = g
  )

map2
