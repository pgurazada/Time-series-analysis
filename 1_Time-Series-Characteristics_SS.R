#' ---
#' title: "Chapter 1: Time Series Characteristics"
#' author: Shumway and Sstoffer
#' output: github_document
#' ---
#' last update: Fri Apr 20 07:11:33 2018

library(astsa)
library(xts)
library(tidyverse)
library(ggfortify)

set.seed(20130810)

data("jj")
glimpse(jj)

#' Figure 1.1
dev.new()
tsplot(jj, ylab = "Quarterly earnings per share")
tsplot(log(jj))

autoplot(jj) +
  labs(x = "Year",
       y = "Quarterly earnings per share")

autoplot(log(jj)) +
  labs(x = "Year",
       y = "Quarterly earnings per share")

#' Figure 1.3
autoplot(globtemp, ylab = "Global temperature deviations")

#' Figure 1.4
djiar <- diff(log(djia$Close))[-1] # Throw out the first observation since is is NA
