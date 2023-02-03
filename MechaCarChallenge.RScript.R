 # File name of output log
my_log <- file("mechacar_output.txt")
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
mecha_car_df
# Perform linear regression using the lm() function.
# In the lm() function, pass in all six variables and add the dataframe.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle
 + ground_clearance + AWD, data = mecha_car_df)

# Using the summary() function, determine the p-value and the r-squared
# value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle
+ ground_clearance + AWD, data = mecha_car_df))

## Part 2: Create Visualizations for the Trip Analysis
# Use the library() function to load the dplyr package.
library(dplyr)
# Import and read in the Suspension_Coil.csv file as a table.
suspension_coil_table <- read.csv("Resources/Suspension_Coil.csv",
check.names = FALSE, stringsAsFactors = FALSE)
suspension_coil_table
# Create a total_summary dataframe.
# Get summary statistics for the suspension coil’s PSI column.
total_summary_df <- suspension_coil_table %>%
  summarize(Mean = mean(PSI),
            Medain = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI), .groups = "keep")
View(total_summary_df)
# Create a lot_summary dataframe.
# Get summary statistics for the suspension coil’s PSI column.
lot_summary_df <- suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI),
            Medain = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI), .groups = "keep")
View(lot_summary_df)

## Part 3: T-Tests on Suspension Coils
# Perform t-test to determine if the PSI for all manufacturing lots is
# statistically different from the pop. mean of 1,500 pounds per square inch.
t.test(suspension_coil_table$PSI, mu = 1500)

# Perform t-test to determine if the PSI for each manufacturing lot is
# statistically different from the pop. mean of 1,500 pounds per square inch.

# Subset for each lot
lot1 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot3")

# t-test for Lot 1
t.test(lot1$PSI, mu = 1500)
# t-test for Lot 2
t.test(lot2$PSI, mu = 1500)
# t-test for Lot 3
t.test(lot3$PSI, mu = 1500)

# Close connection to log file
closeAllConnections()