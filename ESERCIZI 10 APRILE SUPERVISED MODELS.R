###esercizio 1

biodegradation_data = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata/main/L18_modelling_exercises/L18_dataset_biodegradation_data.rds"))
library(tidymodels)
library(tidyverse)

set.seed(358)

degradation_split = initial_split(biodegradation_data, prop = 0.75)
degradation_training = training(degradation_split)
degradation_testing = testing(degradation_split)

lm_model <-
  linear_reg() %>% 
  set_engine("lm")

###recipe and workflow because the variation is too much between values

degradation_lm_formula_fit <-
  lm_model %>% 
  fit(biodegradation_rate ~ ., data = degradation_training)

degradation_lm_formula_fit

tidy(degradation_lm_formula_fit)

degradation_lm_prediction = degradation_lm_formula_fit %>%
  predict(degradation_testing) %>%
  bind_cols(degradation_testing)




degradation_lm_prediction %>%
  ggplot(aes(x=biodegradation_rate, y=.pred))+
  geom_point(alpha = 0.4, colour = "blue")+
  geom_abline(colour = "red", alpha = 0.9)



knn_reg_model <-
  nearest_neighbor(neighbors = 5, weight_func = "triangular") %>%
  # This model can be used for classification or regression, so set mode
  set_mode("regression") %>%
  set_engine("kknn")

knn_reg_model



degradation_knn_formula_fit <-
  knn_reg_model %>% 
  fit(formula = product ~., data = degradation_training)

###NON FUNZIONA KNN CON TILDE PUNTO MA VANNO COPIATI TUTTE LA VARIABILI
degradation_knn_prediction = enzyme_knn_formula_fit %>%
  predict(enzyme_testing) %>%
  bind_cols(enzyme_testing)



enzyme_knn_prediction %>%
  ggplot(aes(x=product, y=.pred))+
  geom_point(alpha = 0.4, colour = "blue")+
  geom_abline(colour = "red", alpha = 0.9)




#### esercizio 2


metastasis_risk_data = readRDS(url("https://raw.githubusercontent.com/lescai-teaching/class-bigdata/main/L18_modelling_exercises/L18_dataset_metastasis_risk_data.rds"))

metastasis_split = initial_split(metastasis_risk_data, prop = 0.75)
metastasis_training = training(metastasis_split)
metastasis_testing = testing(metastasis_split)

str(metastasis_risk_data)


logistic_model <- logistic_reg() %>% 
  set_engine("glm") %>% 
  set_mode("classification")

metastasis_recipe <- recipe(metastasis_risk ~ ., data = metastasis_risk_data) %>% 
  step_dummy(all_nominal_predictors()) %>%
  step_normalize()

logreg_wf_variants <- workflow() %>% 
  add_recipe(variants_recipe) %>% 
  add_model(logistic_model)


logreg_variants_fit <- fit(
  logreg_wf_variants,
  variants_training
)



####we should use multinomial regression. with zv, we remove values
####that have 0 variance
