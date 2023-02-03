 # File name of output log
my_log <- file("hotel_bookings_statistical_analysis.txt")
# Writing console output to log file
sink(my_log, append = TRUE, type = "output")
sink(my_log, append = TRUE, type = "message")
# Writing currently opened R script to file
cat(readChar(rstudioapi::getSourceEditorContext()$path,
             file.info(rstudioapi::getSourceEditorContext()$path)$size))

## Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mecha_car_df <- read.csv("Resources/MechaCar_mpg.csv",
check.names = FALSE, stringsAsFactors = FALSE)

# Perform linear regression using the lm() function.
# In the lm() function, pass in all six variables and add the dataframe.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle
 + ground_clearance + AWD, data = mecha_car_df)

# Using the summary() function, determine the p-value and the r-squared
# value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle
+ ground_clearance + AWD, data = mecha_car_df))

## Part 2: Create Visualizations for the Trip Analysis

# Import and read in the Suspension_Coil.csv file as a table.
suspension_coil_table <- read.csv("Resources/Suspension_Coil.csv",
check.names = FALSE, stringsAsFactors = FALSE)

# Create a total_summary dataframe.
# Get summary statistics for the suspension coil’s PSI column.
total_summary_df <- suspension_coil_table %>%
  summarize(Mean = mean(PSI),
            Medain = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI), .groups = "KEEP")

# Create a lot_summary dataframe.
# Get summary statistics for the suspension coil’s PSI column.
lot_summary_df <- suspension_coil_table %>%
  group_by(manufacturing_lot) %>%
  summarize(Mean = mean(PSI),
            Medain = median(PSI)
            Variance = var(PSI),
            SD = sd(PSI), .groups = "KEEP")

# Close connection to log file
closeAllConnections()