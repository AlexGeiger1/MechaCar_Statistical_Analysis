# MechaCar_Statistical_Analysis
# Summary
## Linear Regression to Predict MPG

Multi-variate statistical analysis was completed to determine which manufacturing factors affect mpg performance of MechaCar prototypes.

- In reviewing the p-values for the multiple variables/coefficients, vehicle_length (p=2.60e-08) and ground_clearance (p=5.21e-08)  have more significance in predicting mpg performance than the other variables measured. These other variables were vehicle_weight, spoiler_angle and AWD, which are more likely to provide random variance.
- The slope of the linear model is not zero.  The results of the multiple linear model shows a p-value of 5.35e-11, indicating a statistically significant linear relationship exists and therefore not 0 slope.
- The R-squared value of 71.49% and p-value of the intercept (5.08e-08) means that the model can be used for a good amount of predictability, however, there may be other factors that need to be included to reduce more variability.

![](https://github.com/AlexGeiger1/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable1.png)

## Summary Statistics on Suspension Coils
Overall, the total)summary information shows the variance is within the requirement of no more than 100 points per square inch.  But reviewing data by lot shows the variance on Lot3 is higher than acceptable.
- Total_summary

![Total_summary](https://github.com/AlexGeiger1/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable2a.png)

- Lot_summary

![Lot_summary](https://github.com/AlexGeiger1/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable2b.png)

## T-Tests on Suspension Coils
The total PSI mean for all lots as seen below was 1498.78 with p-value = 0.6028 which was not significantly different from the population mean (1500 psi). 
Lot 1 had a mean of 1500 and  Lot 2 was 1500.2 with p-values 1 and 0.6072 respectively, both indicating no significant difference from the population.  While lot 3 does show a significant difference with mean of 1496.14 and p-value of 0.04168.

![](https://github.com/AlexGeiger1/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable3.png)

## Study Design: MechaCar vs Competition
A useful study between the competition and MechaCar would be to compare mpg performance based on the age of the car for both city and highway mileage, since people are very interested in saving gas money today.  The null hypothesis would be that there is no difference in city and highway performance as measured by mpg between MechaCar and the competition over time.  The alternative Hypothesis would be that there is a significant difference in mpg between MechaCar and the competition. 
The mpg data would need to be collected from the competition and from MechaCar for specified intervals of age (e.g. 6 months, 1 year, etc). Since vehicle_length and ground_clearance were shown to be correlated to mpg at MechaCar, collection of this data would also be done from the competitor and a t-test comparing samples from the competition for these same factors would be performed to determine if the factors have the same impact on mpg as MechaCar.   A linear regression test could then be performed to compare the 2 groups based on age to determine if one company does better than the other over age of the vehicle.
