"
  Data 512A Project Part4 - Regression Analysis
  Andy Wang, 12/10/2022
  
  In this R code, the detaied model fitting and model selection are displayed
  and the code are fully documented
    
"

### set work directory and load packages
setwd('C:/Users/Qcwan')
library(tidyverse)
library(ggplot2)
library(MASS)
library(pscl)
library(lmtest)

### data Loading

# load daily confired cases data
Honolulu <- read_csv("Honolulu_dataset.csv",show_col_types = FALSE)

# load daily passenger arrivals data
Honolulu_tourist <- read_csv("Honolulu_dataset_tourist.csv",show_col_types = FALSE)


### EDA

# Using the ggplot library to plot the distribution of daily confired cases data
p<- ggplot(Honolulu, aes(x=daily_confirm_cases)) +
  geom_histogram(bins=300, color="white", fill="#56B4E9") + 
  theme_classic() + 
  ggtitle("Histogram of Daily Confirmed COVID-19 Cases in Honolulu County",
          subtitle = "From 2020-4-20 to 2021-4-20") +
  xlab("cases")


### Model fitting for daily confired cases data

# fit poisson regression, and display model summary
m1 <- glm(daily_confirm_cases ~ .- date, family = "poisson", data = Honolulu)
summary(m1)

# fit negative binomial regression, and display model summary
m2  <- glm.nb(daily_confirm_cases ~ .- date,data = Honolulu)
summary(m2)

# fit zero-inflated negative binomial regression, and display model summary
m3 <-zeroinfl(daily_confirm_cases ~ .- date - stringency_index, data = Honolulu, dist = "negbin")
summary(m3)


### Model Selection for daily confired cases data

# calculate AIC score for the three models
AIC(m1,m2,m3)

# conducted log-likelyhood test for each pairs of models
lrtest(m1,m2)
lrtest(m2,m3)


### Model fitting for daily passenger arrivals data

# fit poisson regression, and display model summary
m4 <- glm(tourist ~ .- date - daily_confirm_cases, family = "poisson",data = Honolulu_tourist)
summary(m1)

# fit negative binomial regression, and display model summary
m5  <- glm.nb(tourist ~ .- date - daily_confirm_cases,data = Honolulu_tourist)
summary(m2)

# fit zero-inflated negative binomial regression, and display model summary
m6 <-zeroinfl(tourist ~ .- date - daily_confirm_cases,data = Honolulu_tourist, dist = "negbin")
summary(m3)


### Model Selection for daily confired cases data

# calculate AIC score for the three models
AIC(m4,m5,m6)

# conducted log-likelyhood test for each pairs of models
lrtest(m4,m5)
lrtest(m5,m6)
             
