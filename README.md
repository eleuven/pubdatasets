# pubdatasets

Publicly available datasets used in the book and examples.

## Install

```r
# from GitHub
remotes::install_github("eleuven/pubdatasets")
```

## Data included

- `star`: Project STAR (Tennessee class-size experiment), wide format with grade-specific variables (k, 1, 2, 3).
- `caschool`: California school districts (Stock & Watson).
- `cps92_12`, `cps18`, `CPS08_1perc`: CPS extracts.
- `beertax`, `cigarettes`: alcohol/cigarette tax panels.
- `hmda_sw`: Mortgage application data (HMDA subset).
- `returns`: Returns panel.
- `cardkrueger`: Fast-food minimum wage study.
- `death`: Mortality DiD example.
- `distance`: College distance / binary choice.
- `gt_fuzzydata`: Fuzzy RD example data.
- `webstar`: Web version of STAR wide file.

## Example

```r
library(pubdatasets)
library(data.table)

# reshape to long
star_long <- melt(as.data.table(star),
  measure = patterns(
    read = "^read",
    math = "^math",
    class = "^star",
    lunch = "^lunch"
  ),
  variable.name = "grade")

head(star_long)
```
