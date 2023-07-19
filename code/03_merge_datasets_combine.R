
# Load required packages
library(sf)
library(raster)
conflicted::conflicts_prefer(raster::extract)
# Extract raster values at point locations
tmethane <- extract(day02, trans02)
# Add raster values as attributes to the point data
trans02$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day05, trans05)
# Add raster values as attributes to the point data
trans05$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day07, trans07)
# Add raster values as attributes to the point data
trans07$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day09, trans09)
# Add raster values as attributes to the point data
trans09$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day11, trans11)
# Add raster values as attributes to the point data
trans11$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day12, trans12)
# Add raster values as attributes to the point data
trans12$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day13, trans13)
# Add raster values as attributes to the point data
trans13$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day14, trans14)
# Add raster values as attributes to the point data
trans14$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day16, trans16)
# Add raster values as attributes to the point data
trans16$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day17, trans17)
# Add raster values as attributes to the point data
trans17$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day20, trans20)
# Add raster values as attributes to the point data
trans20$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day23, trans23)
# Add raster values as attributes to the point data
trans23$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day24, trans24)
# Add raster values as attributes to the point data
trans24$tropmethane <- tmethane
# Extract raster values at point locations
tmethane <- extract(day27, trans27)
# Add raster values as attributes to the point data
trans27$tropmethane <- tmethane

################################################################################
# Append Datasets 
################################################################################
# Define the vector of nonsequential numbers
nonsequential_numbers <- c(2, 5, 7, 9)

# Create an empty list to store the data frames
data_frames_list <- list()

# Loop over the nonsequential numbers
for (i in nonsequential_numbers) {
  filename <- paste0("trans","0", i)
  
  # Assuming you have already read your data into separate data frames day1, day2, day3, etc.
  # Here we assume you have trans11, trans12, trans13, etc.
  trans_data <- get(filename)
  
  # Add the data frame to the list with the appropriate name
  data_frames_list[[filename]] <- trans_data
}

# Combine the data frames into a single data frame (optional, if desired)
combined_data1 <- do.call(rbind, data_frames_list)

################################################################################
# Do it for the remainder of the days
################################################################################
# Define the vector of nonsequential numbers
nonsequential_numbers <- c(11,12,13,14,16,17,20,23,24,27)

# Create an empty list to store the data frames
data_frames_list <- list()

# Loop over the nonsequential numbers
for (i in nonsequential_numbers) {
  filename <- paste0("trans", i)
  
  # Assuming you have already read your data into separate data frames day1, day2, day3, etc.
  # Here we assume you have trans11, trans12, trans13, etc.
  trans_data <- get(filename)
  
  # Add the data frame to the list with the appropriate name
  data_frames_list[[filename]] <- trans_data
}

# Combine the data frames into a single data frame (optional, if desired)
combined_data2 <- do.call(rbind, data_frames_list)

# Now combine both datasets
# Define the vector of nonsequential numbers
nonsequential_numbers <- c(1,2)

# Create an empty list to store the data frames
data_frames_list <- list()

# Loop over the nonsequential numbers
for (i in nonsequential_numbers) {
  filename <- paste0("combined_data", i)
  
  # Assuming you have already read your data into separate data frames day1, day2, day3, etc.
  # Here we assume you have trans11, trans12, trans13, etc.
  trans_data <- get(filename)
  
  # Add the data frame to the list with the appropriate name
  data_frames_list[[filename]] <- trans_data
}

# Combine the data frames into a single data frame (optional, if desired)
combined_data3 <- do.call(rbind, data_frames_list)

rm(day02)
rm(combined_data1,combined_data2,data_frames_list,day05,day07,day09,day11,day12,day13,day14,day16,day17,day20,day23,day24,day27)
rm(raster_values)
rm
rm(nonsequential_numbers)
rm(trans02,trans05,trans07,trans09,trans11,trans12,trans13,trans14,trans16,trans17,trans20,trans23,trans24,trans27)
rm(trans_data)
