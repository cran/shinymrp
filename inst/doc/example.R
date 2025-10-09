## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and fit multiple models
# model1 <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   )
# )
# 
# model2 <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   ),
#   interaction = list(
#     `sex:time` = "normal(0, 2)",
#     `race:time` = "normal(0, 2)",
#     `age:time` = "normal(0, 2)"
#   )
# )
# 
# # Fit all models
# model1$fit(n_iter = 500, n_chains = 2, seed = 123)
# model2$fit(n_iter = 500, n_chains = 2, seed = 123)
# 
# # Compare models
# comparison <- workflow$compare_models(model1, model2)

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = "covid",
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and (optionally) save a covariate distribution histogram
# # with dimensions in inches
# college_hist <- workflow$covar_hist(
#   "college",
#   file = "college_hist.png",
#   width = 18,
#   height = 8,
#   units = "in"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create a new model object
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   ),
#   interaction = list(
#     `sex:time` = "normal(0, 2)",
#     `race:time` = "normal(0, 2)",
#     `age:time` = "normal(0, 2)"
#   )
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and (optionally) save a demographic comparison plot
# # with dimensions in inches
# sex_bar <- workflow$demo_bars(
#   demo = "sex",
#   file = "sex_bar.png",
#   width = 18,
#   height = 8,
#   units = "in"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# example_model <- example_model()
# 
# # Create and (optionally) save an interactive map of MRP estimates
# est_map <- workflow$estimate_map(
#   example_model,
#   geo = "county",
#   file = "est_map.html"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# example_model <- example_model()
# 
# # Create and (optionally) save a plot of overall estimates
# # with dimensions in inches
# p_est_overall <- workflow$estimate_plot(
#   example_model,
#   width = 18,
#   height = 8,
#   units = "in"
# )
# 
# # Create estimate plots for sex with 90 percent confidence intervals
# p_est_sex <- workflow$estimate_plot(
#   example_model,
#   group = "sex",
#   interval = 0.9
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example sample data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Load example poststratification data
# pstrat_data <- example_pstrat_data()
# 
# # Read in poststratification data
# workflow$load_pstrat(
#   pstrat_data = pstrat_data,
#   is_aggregated = TRUE
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and (optionally) save an interactive map
# # of average outcome measure
# oc_map <- workflow$outcome_map(
#   summary_type = "max",
#   file = "outcome_map.html"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and (optionally) save outcome plots
# # with dimensions in inches
# oc_plot <- workflow$outcome_plot(
#   file = "outcome_plot.png",
#   width = 18,
#   height = 8,
#   units = "in"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# example_model <- example_model()
# 
# # Perform posterior predictive check and (optionally) save the plot
# ppc_plot <- workflow$pp_check(example_model, file = "ppc_plot.png")

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Get the preprocessed data
# preprocessed <- workflow$preprocessed_data()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and (optionally) save an interactive sample size map
# ss_map <- workflow$sample_size_map(file ="sample_size_map.html")

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and fit multiple models
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   )
# )
# 
# # Fit the model
# model$fit(n_iter = 500, n_chains = 2, seed = 123)
# 
# # Check if estimates exist (should be FALSE)
# model$check_estimate_exists()
# 
# # Run poststratification
# # NOTE: $poststratify() is called by $estimate_plot() of a MRPWorkflow object
# workflow$estimate_plot(model)
# 
# # Check again (should be TRUE)
# model$check_estimate_exists()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and fit multiple models
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   )
# )
# 
# # Check if model is fitted (should be FALSE)
# model$check_fit_exists()
# 
# # Fit the model
# model$fit(n_iter = 500, n_chains = 2, seed = 123)
# 
# # Check again (should be TRUE)
# model$check_fit_exists()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get diagnostics summary
# diagnostics_summary <- example_model$diagnostics(summarize = TRUE)
# 
# # Get raw diagnostics of individual chains
# diagnostics_detailed <- example_model$diagnostics(summarize = FALSE)

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example data
# sample_data <- example_sample_data()
# 
# # Preprocess sample data
# workflow$preprocess(
#   sample_data,
#   is_timevar = TRUE,
#   is_aggregated = TRUE,
#   special_case = NULL,
#   family = "binomial"
# )
# 
# # Link to ACS data at ZIP code level
# workflow$link_acs(
#   link_geo = "zip",
#   acs_year = 2021
# )
# 
# # Create and fit multiple models
# model <- workflow$create_model(
#   intercept_prior = "normal(0, 4)",
#   fixed = list(
#     sex = "normal(0, 2)"
#   ),
#   varying = list(
#     race = "normal(0, 2)",
#     age = "normal(0, 2)",
#     time = "normal(0, 2)"
#   )
# )
# 
# # Run MCMC
# model$fit(n_iter = 500, n_chains = 2, seed = 123)

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get model formula
# formula <- example_model$formula()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get model metadata
# metadata <- example_model$metadata()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get model specification list
# spec <- example_model$model_spec()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Initialize workflow
# workflow <- mrp_workflow()
# 
# # Load example model
# example_model <- example_model()
# 
# # Save model to file
# example_model$save("model.qs")
# 
# # Load model later
# loaded_model <- qs::qread("model.qs")

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get Stan code
# stan_code <- example_model$stan_code()

## -----------------------------------------------------------------------------
# library(shinymrp)
# 
# # Load example data
# example_model <- example_model()
# 
# # Get parameter summaries
# parameter_summary <- example_model$summary()
# 
# # Fixed effects
# parameter_summary$fixed
# 
# # Standard deviation of varying effects
# parameter_summary$varying
# 
# # Standard deviation of residuals
# parameter_summary$other

