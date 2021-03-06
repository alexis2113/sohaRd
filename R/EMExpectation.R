#' Titlea
#'
#' @param p.vals s
#' @param number.categories s
#'
#' @return s
#' @export
#'
#' 
EMExpectation <-
function(p.vals, number.categories) {
  # Generates posterior probabilities of whether variables belong to categories
  #
  # Args:
  #   p.vals: A matrix of p values generated by EMPvalues
  #   number.categories: The number of possible categories 
  # Returns:
  #   A matrix of posterior probabilities
  #     rows = number of data points
  #     columns = number of categories
  # Divide by the sums of rows
  row.sums <- matrix(rep(rowSums(p.vals),number.categories),
                     ncol = number.categories)
  p.vals <- p.vals / row.sums
  return(p.vals)
}
