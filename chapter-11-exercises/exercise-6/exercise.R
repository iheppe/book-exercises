# Exercise 6: dplyr join operations

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library("nycflights13")
library("dplyr")

# Create a dataframe of the average arrival delays for each _destination_, then 
# use `left_join()` to join on the "airports" dataframe, which has the airport
# information
# Which airport had the largest average arrival delay?
View(airports)
View(flights)
destination_delays <- flights %>% 
  group_by(dest) %>% 
  rename(faa = dest) %>% 
  summarize(avg_delay = mean(arr_delay, na.rm = TRUE))
airport_info <- left_join(airports, destination_delays, by = "faa")
airport_info <- filter(airport_info, avg_delay == max(avg_delay, na.rm = TRUE))

# Create a dataframe of the average arrival delay for each _airline_, then use
# `left_join()` to join on the "airlines" dataframe
# Which airline had the smallest average arrival delay
View(airlines)
airline_delay <- flights %>% 
  group_by(carrier) %>% 
  summarize(avg_delay = mean(arr_delay, na.rm = TRUE))
airline_info <- left_join(airlines, airline_delay, by = "carrier")
airline_info <- filter(airline_info, avg_delay == min(avg_delay, na.rm = TRUE))
