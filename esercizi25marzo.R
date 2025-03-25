
#EXCERCISE 1

dataExposure = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata-2023/main/L10_stats_exercises/exercise_01/L10_dataset_exercise01.rds"))
library(tidyverse)
library(infer)
dataExposure
str(dataExposure)
chisq_test(dataExposure, drinking ~ condition)

drinking_null_empirical = dataExposure %>%
  specify(formula = condition ~ drinking, success = "healthy") %>%
  hypothesise(null = "independence") %>%
  generate(reps = 1000, type = "permute") %>%
  calculate(stat = "Chisq")


drinking_observed = dataExposure %>%
  specify(formula = condition ~ drinking, success = "healthy") %>%
  hypothesise(null = "independence") %>%
  calculate(stat = "Chisq")

drinking_null_empirical%>%
  visualize() + 
  shade_p_value(genotype_observed,
                direction = "greater")

#this is to summarise number of a certain category
dataExposure %>% 
  group_by(())condition, drinking) %>% 
  summmarise (numerosity =n())


###all variables are categorical, chi square is good. Second step is calculating
###permutation with the repetition step. before visualizing we decide
### significance level and then visualize










####EXCERCISE 2


dataHappyness = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata-2023/main/L10_stats_exercises/exercise_02/L10_dataset_exercise_02.rds"))

t_test(x = dataHappyness, 
       formula = endorphin_level ~ happyness, 
       order = c("rarely_happy", "usually_happy"),
       alternative = "two-sided")

###the group is the cause, the NT level is the outcome. we chose the groups, not the other way around


#### flipping plots might help visualize data better,

serotonin_observed = dataHappyness %>% 
  specify(serotonin_level ~ happyness) %>% 
  calculate (stat = "diff in means", order = c("rarely_happy", "usually_happy"))

serotonin_null = dataHappyness %>% 
  specify(serotonin_level ~ happyness) %>% 
  hypothesise(null = "independence") %>%
  generate (reps =1000, type = "permute") %>% 
  calculate (stat = "diff in means", order = c("rarely_happy", "usually_happy"))

serotonin_null %>%
  visualise()+
  shade_p_value(serotonin_observed, direction = "two-sided")

serotonin_null %>% 
  get_p_value(obs_stat = serotonin_observed,
              direction = "two-sided")







#EXCRCISE 3

dataCytofluorimeter = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata-2023/main/L10_stats_exercises/exercise_03/L10_dataset_exercise03.rds"))


#EXCERCISE 4

dataReactor = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata-2023/main/L10_stats_exercises/exercise_04/L10_dataset_exercise04.rds"))

sugar_groups_observed = bloodTestsGroups %>%
  specify(formula = sugar ~ individual_group ) %>%
  hypothesise(null = "independence") %>%
  calculate(stat = "F")

sugar_groups_null_empirical = bloodTestsGroups %>%
  specify(formula = sugar ~ individual_group ) %>%
  hypothesise(null = "independence") %>%
  generate(reps = 1000, type = "permute") %>%
  calculate(stat = "F")




