##Linear Regression to Predict MPG##

library(dplyr)
MechaCar_mpg <- read.csv(file='/Users/jamesdemott/Desktop/Bootcamp/R_analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv', check.names=T, stringsAsFactors = F) #

linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg) #create linear model

summary(linear_model) #summarize linear model




##Visualizations for Trip Analysis##

susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary_psi <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
  
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table

##T-Test on Suspension Coils##

lot1 <- susp_coil %>% filter(susp_coil$Manufacturing_Lot == "Lot1")
lot2 <- susp_coil %>% filter(susp_coil$Manufacturing_Lot == "Lot2")
lot3 <- susp_coil %>% filter(susp_coil$Manufacturing_Lot == "Lot3")

sample_sus <- susp_coil %>% sample_n(50)

t.test(sample_sus$PSI, mu = mean(susp_coil$PSI))
sample_table_1 <- t.test(lot1$PSI, mu = 1500)
t.test(lot1$PSI, lot2$PSI, paired = T)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)


##Study Design: MechaCar vs Competition ##
##Null Hypothesis: Weight does affect Vehicle MPG, alt Hypothesis: weight doesn't meaningfully affect MPG ## 

t.test(MechaCar_mpg$vehicle_weight, MechaCar_mpg$mpg )

##P value is less than 0.05, so we reject the null hypothesis that weight does not affect MPG; in other words weight does not meaningfully affect MPG as per results of our t-test








