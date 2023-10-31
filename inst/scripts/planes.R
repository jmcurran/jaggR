library(dplyr)
data(planes.df)

planes.df = planes.df |>
  mutate(paper = factor(case_when(
    paper == "80gsm" ~ "80",
    .default = "50"
  ))) |>
  mutate(angle = factor(case_when(
    angle == "horizontal" ~ "0",
    .default = "45"
  ))) |>
  mutate(design = factor(case_when(
    design == "simple" ~ "simple",
    .default = "advanced"),
    levels = c("simple", "advanced")))

planes.df = planes.df[c(9:16,1:8),]

planes.df = planes.df |>
  mutate(treat = rep(1:8, rep(2, 8))) |>
  mutate(rep = rep(1:2, 8))

rownames(planes.df) = 1:16

save(planes.df, file = "data/planes.df.rda")

plot(distance ~ treat, data = planes.df, pch = rep(c(1:4, 7:10), rep(2, 8)))
library(ggplot2)
g = planes.df |> ggplot(aes(x = rep, y = distance)) +
  geom_point() + facet_grid(rows = vars(paper),
                            cols = vars(angle,design))
g
