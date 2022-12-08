#A simple method to load packages and install it if necessary.
lpkg <- function(pkg) {
  npkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(npkg))
    install.packages(npkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
