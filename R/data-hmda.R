#' Mortgage applications (hmda_sw)
#'
#' HMDA mortgage application data subset (loan approvals/denials and borrower characteristics).
#'
#' @format A data frame with variables including:
#' \describe{
#'   \item{deny}{Loan denial indicator}
#'   \item{pirat}{Payment-to-income ratio}
#'   \item{hirat}{Housing expense-to-income ratio}
#'   \item{lvrat}{Loan-to-value ratio}
#'   \item{chist}{Credit history flag}
#'   \item{mhist}{Mortgage history flag}
#'   \item{phist}{Public record flag}
#'   \item{black}{Borrower race indicator}
#' }
#'
#' @source HMDA public data; Stock & Watson textbook datasets. Download: \url{https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696943.cw/index.html}
"hmda_sw"
