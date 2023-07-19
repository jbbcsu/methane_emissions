## Import trans2am data
library(readr)
trans <- read_csv("inputs/trans/TRANS2AM_Merge_1Hz_v2.csv") %>%
  clean_names()

#table(trans$yymmdd)

# 1 day at a time
trans02 <- filter(trans, yymmdd == 210802 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans27 <- filter(trans, yymmdd == 210727 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans05 <- filter(trans, yymmdd == 210805 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans07 <- filter(trans, yymmdd == 210807 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans09 <- filter(trans, yymmdd == 210809 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans11 <- filter(trans, yymmdd == 210811 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans12 <- filter(trans, yymmdd == 210812 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans13 <- filter(trans, yymmdd == 210813 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans14 <- filter(trans, yymmdd == 210814 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans16 <- filter(trans, yymmdd == 210816 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans17 <- filter(trans, yymmdd == 210817 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans20 <- filter(trans, yymmdd == 210820 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans23 <- filter(trans, yymmdd == 210823 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

trans24 <- filter(trans, yymmdd == 210824 & is.na(a_vlat) != T) %>%
  st_as_sf(coords = c("a_vlon", "a_vlat"), crs = 4326)

rm(trans)
