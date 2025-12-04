## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Preprocess sample data
# # ...
# 
# # Construct poststratification table
# # ...
# 
# # Create a new model object
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 5)",
#   fixed = list(
#     sex = "normal(0, 3)",
#     urbanicity = "normal(0, 3)",
#     college = "normal(0, 3)",
#     employment = "normal(0, 3)",
#     poverty = "normal(0, 3)",
#     income = "normal(0, 3)",
#     adi = "normal(0, 3)"
#   ),
#   varying = list(
#     race = "normal(0, 3)",
#     age = "normal(0, 3)",
#     time = "normal(0, 3)",
#     zip = "bym2"
#   ),
#   sens = 0.7,
#   spec = 0.999
# )
# 
# # Run MCMC
# model$fit(
#   n_iter = 4000,
#   n_chains = 4,
#   adapt_delta = 0.95
# )

