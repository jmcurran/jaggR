fingerprints.df = read.csv("inst/extdata/lough.csv")
library(dplyr)
fingerprints.df = fingerprints.df |>
  rename(number = Participant.Number) |>
  rename(height = Height..cm...average.of.3.measurments.) |>
  rename(weight = Weight..kg...average.of.3.measurements.)

names(fingerprints.df) = tolower(names(fingerprints.df))
names(fingerprints.df) = gsub("^fingerprint\\.(.*$)", "\\1", names(fingerprints.df))

fingerprints.df = fingerprints.df |>
  rename(hand = dominant.hand,
         fpheight = height..mm.,
         temp = fingertip.temperature...c.,
         width = width..mm.,
         area = area..mm2.,
         circumference = circumference..mm.) |>
  mutate(gender = tolower(gender))
names(fingerprints.df)
save(fingerprints.df, file = "data/fingerprints.df.rda")
