# More info: https://groundhogr.com/
pkgs <- c("rtweet", "sf", "styler")
groundhog::groundhog.library(pkgs, "2021-12-28", tolerate.R.version = "3.6.3")

# More info: https://docs.ropensci.org/rtweet/reference/create_token.html
portugalmapbot_token <- rtweet::create_token(
  app = "portugalmapbot",
  consumer_key = Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token = Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret = Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET"),
  set_renv = FALSE
)

# Load boundaries
portugal <- sf::st_read("portugal/gadm36_PRT_0.shp")

# Generate random coordinates
point <- sf::st_sample(portugal, 1)
coord <- sf::st_coordinates(point)

lon <- round(coord[1], 4)
lat <- round(coord[2], 4)

# More info: https://docs.mapbox.com/api/maps/static-images/#retrieve-a-static-map-from-a-style
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat),
  ",15,0/600x400@2x?access_token=",
  Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")
)
# cat(img_url)

temp_file <- tempfile()
download.file(img_url, temp_file)

sep <- "\n"
latlon_details <- paste0(
  "📍 ", lat, ", ", lon, sep, sep,
  "🗺️ ", "https://www.openstreetmap.org/#map=17/", lat, "/", lon, "/", sep,
  "🗾 ", "https://www.google.com/maps/@", lat, ",", lon, ",17z"
)
# cat(latlon_details)

rtweet::post_tweet(
  status = latlon_details,
  media = temp_file,
  token = portugalmapbot_token
)
