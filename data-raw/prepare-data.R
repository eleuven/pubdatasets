# Data preparation for pubdatasets
# Reads source CSVs from ../csv and stores compressed .rda datasets

src <- file.path("..", "csv")

read_csv_base <- function(fname, ...) {
  read.csv(file.path(src, fname), stringsAsFactors = FALSE, ...)
}

# CASchool (Stock & Watson)
caschool <- read_csv_base("caschool.csv")
usethis::use_data(caschool, compress = "xz", overwrite = TRUE)

# CPS 1992–2012 subset
cps92_12 <- read_csv_base("cps92_12.csv")
usethis::use_data(cps92_12, compress = "xz", overwrite = TRUE)

# CPS 2018 (already as Rdata/csv; use csv)
cps18 <- read_csv_base("cps18.csv")
usethis::use_data(cps18, compress = "xz", overwrite = TRUE)

# CPS 2008 1% sample
CPS08_1perc <- read_csv_base("CPS08_1perc.csv")
usethis::use_data(CPS08_1perc, compress = "xz", overwrite = TRUE)

# Beertax / Traffic deaths
beertax <- read_csv_base("beertax.csv")
usethis::use_data(beertax, compress = "xz", overwrite = TRUE)

# Cigarettes panel
cigarettes <- read_csv_base("cigarettes.csv")
usethis::use_data(cigarettes, compress = "xz", overwrite = TRUE)

# Mortgage HMDA
hmda_sw <- read_csv_base("hmda_sw.csv")
usethis::use_data(hmda_sw, compress = "xz", overwrite = TRUE)

# Returns (panel)
returns <- read_csv_base("returns.csv")
usethis::use_data(returns, compress = "xz", overwrite = TRUE)

# Card & Krueger fast-food
cardkrueger <- read_csv_base("cardkrueger.csv")
usethis::use_data(cardkrueger, compress = "xz", overwrite = TRUE)

# Death (DiD example)
death <- read_csv_base("death.csv")
usethis::use_data(death, compress = "xz", overwrite = TRUE)

# Distance (binary choice)
distance <- read_csv_base("distance.csv")
usethis::use_data(distance, compress = "xz", overwrite = TRUE)

# Fuzzy RD example
gt_fuzzydata <- read_csv_base("gt_fuzzydata.csv")
usethis::use_data(gt_fuzzydata, compress = "xz", overwrite = TRUE)

# WebSTAR wide file (if needed separately)
webstar <- read_csv_base("webstar.csv")
usethis::use_data(webstar, compress = "xz", overwrite = TRUE)
