# Data preparation for pubdatasets
# Reads source CSVs from ../csv and stores compressed .rda datasets

src <- file.path("..", "csv")

read_csv_base <- function(fname, ...) {
  read.csv(file.path(src, fname), stringsAsFactors = FALSE, ...)
}

save_data <- function(name) {
  save(list = name, file = file.path("data", paste0(name, ".rda")), compress = "xz")
}

# CASchool (Stock & Watson)
caschool <- read_csv_base("caschool.csv")
save_data("caschool")

# CPS 1992–2012 subset
cps92_12 <- read_csv_base("cps92_12.csv")
save_data("cps92_12")

# CPS 2018 (already as Rdata/csv; use csv)
cps18 <- read_csv_base("cps18.csv")
save_data("cps18")

# CPS 2008 1% sample
CPS08_1perc <- read_csv_base("CPS08_1perc.csv")
save_data("CPS08_1perc")

# CPS 1988 wage data from AER
if (requireNamespace("AER", quietly = TRUE)) {
  data("CPS1988", package = "AER")
  save_data("CPS1988")
} else {
  warning("Skipping CPS1988; install AER to prepare this dataset.")
}

# Beertax / Traffic deaths
beertax <- read_csv_base("beertax.csv")
save_data("beertax")

# Cigarettes panel
cigarettes <- read_csv_base("cigarettes.csv")
save_data("cigarettes")

# Mortgage HMDA
hmda_sw <- read_csv_base("hmda_sw.csv")
save_data("hmda_sw")

# Returns (panel)
returns <- read_csv_base("returns.csv")
save_data("returns")

# Card & Krueger fast-food
cardkrueger <- read_csv_base("cardkrueger.csv")
save_data("cardkrueger")

# Death (DiD example)
death <- read_csv_base("death.csv")
save_data("death")

# Distance (binary choice)
distance <- read_csv_base("distance.csv")
save_data("distance")

# Fuzzy RD example
gt_fuzzydata <- read_csv_base("gt_fuzzydata.csv")
save_data("gt_fuzzydata")

# WebSTAR wide file (if needed separately)
webstar <- read_csv_base("webstar.csv")
save_data("webstar")
