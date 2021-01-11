# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Both vehicle_length and ground_clearance provided a non-random amount of variance (p values were below the significance level of .05). 

Is the slope of the linear model considered to be zero? Why or why not?
R: Squared of 0.714 and p-value: 5.35e-11 therefore slope is not zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes this linear model is a decent predictor of prototypes' mpg. We have a p-value well below  .05 and an r-squared of .71; meaning that about 71% of the predictions made by extrapolating on this model would be correct. Removing the coefficients which have the greatest predictive capacity would impact the model's predictive capability. 

## Summary Statistics on Suspension Coils 

Variance should not exceed 100 pounds per square inch. 

On an overall basis, the prototypes are within the acceptable varaince range. Overall varaince is 62, meaning if we look at the set as a whole, they are acceptable. Lot 1 has a variance of .9, lot 2 7.4. However, lot 3's variance is at 170.28 meaning that it is far above the acceptable variance. Lot 3 should be further analyzed. 


## T-Tests on Suspension Coils 
With a mean of 1500 we conducted a variety of t tests on lot 1, 2, and 3. 
For t-tests on sample group, lot 1 and 2 the p value was greater than .05 meaning that these lots' means are statistically different from the population mean.

For lot three our one sample t test p value is .04 and therefore we can accept that the mean is not statistically different. 

## Study Design: MechaCar vs Competition ##
### Null Hypothesis: Weight does affect Vehicle MPG, alt Hypothesis: weight doesn't meaningfully affect MPG ## 

t.test(MechaCar_mpg$vehicle_weight, MechaCar_mpg$mpg )

P value is less than 0.05, so we reject the null hypothesis that weight does not affect MPG; in other words weight does not meaningfully affect MPG as per results of our t-test


![screenshot of personal test](https://github.com/jamesdemott/MechaCar_Statistical_Analysis/blob/main/Screen%20Shot%202021-01-11%20at%201.57.19%20PM.png)



