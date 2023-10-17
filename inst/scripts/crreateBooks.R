library(dplyr)
data("books.df", package = "s20x")

books.df = books.df |>
  mutate(author = case_when(
    book == "Disclosure" | book == "Rising.Sun" ~ "MC",
    .default = "SK"
  )) |>
  mutate(book.order = case_when(
    book == "Dark.Half" ~ 1,
    book == "Eye.Drag" ~ 2,
    book == "4.Past.Mid" ~ 3,
    book == "Shining" ~ 4,
    book == "Stand" ~ 5,
    book == "T.Knock" ~ 6,
    book == "Disclosure" ~ 7,
    .default = 8
  ))

books.df = books.df |>
  mutate(author = factor(author, levels = c("SK", "MC"))) |>
  mutate(book = factor(book, levels = c("Dark.Half",
                                "Eye.Drag",
                                "4.Past.Mid",
                                "Shining",
                                "Stand",
                                "T.Knock",
                                "Disclosure",
                                "Rising.Sun")))
save(books.df, file = "data/books.df.rda")
