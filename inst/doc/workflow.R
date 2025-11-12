## ----setup, include=FALSE-----------------------------------------------------
run_stan <- requireNamespace("cmdstanr", quietly = TRUE)

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

knitr::opts_template$set(
  tall_plot = list(
    fig.width = 10,
    fig.height = 6,
    fig.align = "center",
    out.width = "90%"
  ),
  long_plot = list(
    fig.width = 13,
    fig.height = 6,
    fig.align = "center",
    out.width = "90%"
  ),
  map = list(
    fig.height = 4,
    out.width = "100%"
  )
)

## ----cache_setup, eval=!run_stan, include=FALSE-------------------------------
# sample_data <- readr::read_csv(
#   "data/timevarying_binomial_prep.csv",
#   show_col_types = FALSE
# )
# workflow <- qs2::qs_read("data/workflow.qs2")
# model1 <- qs2::qs_read("data/model.qs2")
# compare_df <- readr::read_csv(
#   "data/loo.csv",
#   show_col_types = FALSE
# )

## ----create_workflow, eval=run_stan-------------------------------------------
library(shinymrp)
workflow <- mrp_workflow()

## ----example_sample, eval=run_stan--------------------------------------------
sample_data <- example_sample_data(
  is_timevar = TRUE,
  is_aggregated = TRUE,
  special_case = NULL,
  family = "binomial"
)
head(sample_data)

## ----example_sample_cached, eval=!run_stan, echo=FALSE------------------------
# head(sample_data)

## ----preprocess, eval=run_stan------------------------------------------------
workflow$preprocess(
  sample_data,
  is_timevar = TRUE,
  is_aggregated = TRUE,
  special_case = NULL,
  family = "binomial"
)

## ----link_acs, eval=run_stan--------------------------------------------------
workflow$link_acs(link_geo = "zip", acs_year = 2021)

## ----load_pstrat, eval=run_stan-----------------------------------------------
pstrat_data <- example_pstrat_data()
workflow$load_pstrat(pstrat_data, is_aggregated = TRUE)

## ----demo_bars, opts.label="tall_plot"----------------------------------------
workflow$demo_bars(demo = "sex")

## ----covar_hist, error = TRUE-------------------------------------------------
try({
workflow$covar_hist(covar = "income")
})

## ----sample_size_map, opts.label="map"----------------------------------------
workflow$sample_size_map()

## ----outcome_plot, opts.label="long_plot"-------------------------------------
workflow$outcome_plot()

## ----outcome_map, opts.label="map"--------------------------------------------
workflow$outcome_map(summary_type = "max")

## ----create_model1, eval=run_stan---------------------------------------------
model1 <- workflow$create_model(
  intercept_prior = "normal(0, 4)",
  fixed = list(
    sex = "normal(0, 2)",
    race = "normal(0, 2)"
  ),
  varying = list(
    age = "",
    time = ""
  )
)

## ----fit_model1, eval=run_stan------------------------------------------------
model1$fit(
  n_iter = 500,
  n_chains = 2,
  seed = 123,
  show_messages = FALSE,
  show_exceptions = FALSE
)

## ----summary------------------------------------------------------------------
model1$summary()

## ----diagnostics--------------------------------------------------------------
model1$diagnostics()

## ----pp_check, opts.label="long_plot"-----------------------------------------
workflow$pp_check(model1)

## ----create_fit_model2, eval=run_stan-----------------------------------------
model2 <- workflow$create_model(
  intercept_prior = "normal(0, 4)",
  fixed = list(
    sex = "normal(0, 2)",
    race = "normal(0, 2)"
  ),
  varying = list(
    age = "",
    time = ""
  ),
  interaction = list(
    `age:time` = "normal(0, 1)",
    `race:time` = "normal(0, 1)",
    `sex:time` = "normal(0, 1)"
  )
)

model2$fit(
  n_iter = 500,
  n_chains = 2,
  seed = 123,
  show_messages = FALSE,
  show_exceptions = FALSE
)

## ----compare_models, eval=run_stan--------------------------------------------
workflow$compare_models(model1, model2)

## ----compare_models_cached, eval=!run_stan, echo=FALSE------------------------
# compare_df

## ----save_model, eval=FALSE---------------------------------------------------
# model1$save(file = "model1.qs2")
# 
# # load back into workspace
# model1 <- qs2::qs_read("model1.qs2")

## ----estimate_plot, opts.label="tall_plot", fig.width=13, fig.height=14-------
workflow$estimate_plot(model1, group = "sex", interval = 0.95)

## ----estimate_map, opts.label="map"-------------------------------------------
workflow$estimate_map(model1, geo = "county", interval = 0.95, time_index = 1)

