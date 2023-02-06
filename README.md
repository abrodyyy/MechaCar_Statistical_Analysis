# MechaCar_Statistical_Analysis
Module 16: Statistics and R

## Background

We've been tasked with analizing production data for AutosRUs’ newest prototype, the MechaCar. The prototype is currently suffering from production issues that have prevented the manufacturing team from progressing. In order to provide meaningful insights, we'll utilize R Studio to perform a statistical analysis on the protogype data. 

Outline of Statistical Analysis: 
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

This new assignment consists of three technical analysis parts and a proposal for further statistical study. You’ll submit the following:
- Part 1: Linear Regression to Predict MPG
- Part 2: Summary Statistics on Suspension Coils
- Part 3: T-Test on Suspension Coils
- Part 4: Design a Study Comparing the MechaCar to the Competition

## Resources
- Data Source: [MechaCar_mpg.csv](https://github.com/abrodyyy/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv), [Suspension_Coil.csv](link)
- Software: [R 3.3.0+](https://cran.rstudio.com), [R Studio Version 2022.12](https://posit.co/download/rstudio-desktop/v), [Visual Studio Code, 1.70.2](https://code.visualstudio.com/updates/v1_70)

## Deliverable 1: Linear Regression to Predict MPG
![Deliverable 1](https://user-images.githubusercontent.com/111623064/216589474-2bac8a00-9508-499b-807e-95cb16061e0c.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- The Pr(>|t|) helps us to determine which variables/coefficients are statistically signifcant. In our case, this determines which variables are likely to have an impact on the prototype's miles per gallon (fuel efficiency). 
- Based on the information in our linear regression model above, we know that vehicle length and ground clearance are **statistically significant**, and are not likely to provide a random amount of variance to the mpg values. Vehicle weight, spoiler angle, and All Wheel Drive(AWD) have p-values indicating a random amount of variance in the dataset, and are not statistically significant. Essentially, vehicle length and ground clearance are likely to impact fuel efficiency, while vehicle weight, spiler angle, and AWD are not. 

Is the slope of the linear model considered to be zero? Why or why not?
- The **p-value:5.35e-11** of our regression model is much smaller than our assumed significance level of **0.05%**. Based on this information, we know to reject our null hypothesis and assume that there is a correlation between one or more variables and the MechaCar's fuel efficiency. Furthermore, the slope of the linear model is **not** considered to be zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
- Yes, our linear model has an R-Squared of **0.7149**. This demonstrates that approximatley **71.5%** of mpg predictions can be explained using our model.  

## Deliverable 2: Summary Statistics on Suspension Coils

![total_summary_df](https://user-images.githubusercontent.com/111623064/216589540-fea11449-cdaa-4513-a84f-905746f4dbaf.png)

![lot_summary_df](https://user-images.githubusercontent.com/111623064/216589554-7d408db8-1c4d-498f-8fbd-b7fbd7b128b4.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- In total, variance of the suspension coils (62.2936 pounds per square inch) **does not** exceed 100 pounds per square inch. In other words, the current manufacturing data does in fact meet the design specifications for all manufacturing lots **combined**.
- If we examine the lots individually, we see that lots 1 and 2 are individually within the 100 PSI requirement with the variance of their coils being 0.9796 and 7.4694 respectivley. On the other hand, lot 3 has a variance of 170.2861, which is well above the 100 PSI requirement and does not meet the design specification. 


## Deliverable 3: T-Tests on Suspension Coils

![Deliverable 3 (part 1)](https://user-images.githubusercontent.com/111623064/216589618-7672616f-ba0f-4a70-8b34-847f9ba107cc.png)

All Manufacturing Lots:
- We see that for all manufacturing lots, the **p-value = 0.06028** which is **higher** than the assumed significance level of **0.05%**. This leads us to determine that there is **not** sufficient evidence to reject our null hypothesis. In other words, the mean of all manufacturing lots is statistically similar to the population mean of 1500.


![Deliverable 3 (part 2)](https://user-images.githubusercontent.com/111623064/216589663-2a94cc80-7cd2-4dfd-b17e-60103d79e0e4.png)

Individual Lots:
- **Lot 1:**
- **Lot 2:**
- **Lot 3:**

## Deliverable 4: Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.


What metric or metrics are you going to test?


What is the null hypothesis or alternative hypothesis?


What statistical test would you use to test the hypothesis? And why?


What data is needed to run the statistical test?
