library(dplyr)


## Linear Regression to Predict MPG
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head (MechaCar_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD,MechaCar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance + AWD,MechaCar_df)) #generate summary stats


## Summary Statistics on Suspension Coils
Susp_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head (Susp_Coil)
total_summary <- Susp_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table
lots_summary <- Susp_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table


## T-Tests on Suspension Coils
t.test(Susp_Coil$PSI,mu=1500) # all lots
t.test(subset(Susp_Coil$PSI, Susp_Coil$Manufacturing_Lot=="Lot1"),mu=1500) #Lot 1 PSI vs pop mean
t.test(subset(Susp_Coil$PSI, Susp_Coil$Manufacturing_Lot=="Lot2"),mu=1500) #Lot 2 PSI vs pop mean
t.test(subset(Susp_Coil$PSI, Susp_Coil$Manufacturing_Lot=="Lot3"),mu=1500) #Lot 3 PSI vs pop mean


