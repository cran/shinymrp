## ----eval=FALSE---------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize the MRP workflow
# workflow <- mrp_workflow()

## ----eval=FALSE---------------------------------------------------------------
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess the input data
# workflow$preprocess(
#   sample_data,
#   is_timevar    = TRUE,
#   is_aggregated = TRUE,
#   special_case  = NULL,
#   family        = "binomial"
# )
# 
# # Retrieve the cleaned data (optional)
# clean_data <- workflow$preprocessed_data()
# 
# # Link to ACS and obtain poststratification data (e.g., by ZIP code)
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )

## ----eval=FALSE---------------------------------------------------------------
# # Bar plot of a demographic variable
# workflow$demo_bars(demo = "sex")
# 
# # Map of sample size by geography
# workflow$sample_size_map()
# 
# # Plot the distribution of the outcome variable
# workflow$outcome_plot()

## ----eval=FALSE---------------------------------------------------------------
# # Specify and create the model
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex  = "normal(0, 2)",
#     race = "normal(0, 2)"
#   ),
#   varying = list(
#     age  = "normal(0, 2)",
#     time = "normal(0, 2)"
#   )
# )
# 
# # Fit the model: MCMC sampling
# model$fit(n_iter = 500, n_chains = 2, seed = 123)
# 
# # Inspect summary and diagnostics
# model$summary()
# model$diagnostics()
# 
# # Posterior predictive checks
# workflow$pp_check(model)
# 
# # Compare different models using leave-one-out cross-validation
# # workflow$compare_models(model, another_model)

## ----eval=FALSE---------------------------------------------------------------
# # Plot estimated outcomes by demographic group
# workflow$estimate_plot(model, group = "sex")
# 
# # Choropleth map of geographic estimates
# workflow$estimate_map(model, geo = "county")

