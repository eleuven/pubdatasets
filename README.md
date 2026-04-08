# pubdatasets

Publicly available datasets used in the book and examples.

## Install

```r
# from GitHub
remotes::install_github("eleuven/pubdatasets")
```

## Data included

- `star`: Project STAR (Tennessee class-size experiment), wide format with grade-specific variables (k, 1, 2, 3).

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
