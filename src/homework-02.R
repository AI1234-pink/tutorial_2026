############################################
# File: homework02.R
# Author:AI Chen
# Date: 2026-03-20
# Description:
#   This script searches for, installs, and loads the tidyverse package from CRAN..User-Defined Function
# Usage:
#   Run this script line by line in RStudio.
############################################

# Clear environment
rm(list = ls())

# Search for the package in available CRAN packages
available.packages()["tidyverse", ]

# Install the package from CRAN
install.packages("tidyverse", repos = "https://cloud.r-project.org")

# Load the package
library(tidyverse)

# View package information
packageVersion("tidyverse")

#  查看包的帮助文档
help(package = "tidyverse")

# 查看 tidyverse 包含的核心子包
tidyverse::tidyverse_packages()

#查看某个子包中的函数
ls("package:dplyr")

# 查看某个子包中的数据集
data(package = "ggplot2")

# 加载某个具体数据集，例如 mpg
data("mpg", package = "ggplot2")

#  查看具体函数和数据集帮助
help("filter", package = "dplyr")

help("mpg", package = "ggplot2")


# 查看 R 内存中 datasets 包中的数据集
data() 
# 查看所有数据集
data(package=.packages(all.available = TRUE)) 


############################################
# File: homework02.R
# Author:AI Chen
# Date: 2026-03-20
# Description:
#   User-Defined Function
# Usage:
#   Run this script line by line in RStudio.
############################################
#for 循环版
x <- rnorm(n = 10, mean = 35, sd = 10)

check_threshold_for2 <- function(vec, threshold = 35) {
  result <- logical(length(vec))
  
  for (i in 1:length(vec)) {
    result[i] <- vec[i] > threshold
  }
  
  data.frame(value = vec, above_35 = result)
}

check_threshold_for2(x)
#apply 家族版
x <- rnorm(n = 10, mean = 35, sd = 10)

check_threshold_apply2 <- function(vec, threshold = 35) {
  result <- sapply(vec, function(i) i > threshold)
  
  data.frame(value = vec, above_35 = result)
}

check_threshold_apply2(x)

