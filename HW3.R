library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)

load("C:/Users/camil/Downloads/Household_Pulse_data_ph4c2.RData")
#1

ls()
ggplot(Household_Pulse_data, aes(x = RECVDVACC,fill = factor(EEDUC))) +
  geom_density(alpha=0.5) +
  labs(title = 'Density plot of Vaccination Status Distribution by Education Level',
       x = 'VACCINATION STATUS',
       y = 'DENSITY') +
  theme_minimal() +
  scale_fill_manual(values = c("blue", "red", "green", "purple", "orange","gray","pink"))+
  facet_wrap(~ EEDUC, ncol = 7) +
  theme(
    axis.text.x = element_text(angle = 90, hjust = 1)
  )

#Density Plot: 
Each facet represents the density distribution of RECVDVACC for a specific education level (EEDUC). 
Each facet will show a smoothed curve representing the distribution of RECVDVACC for the corresponding education level.

#By examining the different facets (plots for each education level), we can see how the distribution of vaccination status varies with education level. 
#We observe that individuals with some college diplomas, associate degrees, and bachelor’s degrees have higher densities for the vaccination status labeled as "Yes, got vaccine."
#There are also more "N/A" entries for individuals with high school diplomas and some college degrees.
#This may be because some individuals did not provide their vaccination status or because some participants chose not to answer the vaccination status question.