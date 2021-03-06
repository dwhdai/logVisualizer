
<!-- README.md is generated from README.Rmd. Please edit that file -->

# logVisualizer

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/dwhdai/logVisualizer.svg?branch=master)](https://travis-ci.org/dwhdai/logVisualizer)
<!-- badges: end -->

## Foreword

The goal of `logVisualizer` is to create a simple application that
allows data scientists to visualize production logs.

As a data scientist in a small team, I commonly find myself navigating
through the file-systems to look at daily production logs. Sometimes,
it’s because I am troubleshooting an error that my application
encountered; other times, I just want to make sure that everything
executed as intended, regardless of whether a fatal error occurred.

Another thing I noticed is that while my intentions of logging were
great, my logs lacked consistency. Aside from throwing the occasional
error, it’s unclear that my current logs provided useful information.

As projects scale up and new projects start up, I would like to 1)
automate as much as possible, and 2) ensure that all relevant
information is readily available for inspection. The latter speaks to
doing a deep-dive on **what** should be logged (and *how* they should be
logged), which is outside of the scope of this project. The former,
however, was the motivation behind this project.

## `logVisualizer` - the application

`logVisualizer` is a Shiny application that allows data scientists to
easily visualize production logs. Rather than navigating to each
log-file individually, one can point the paths of log directories that
they would like to monitor. `logVisualizer` is a central hub for logged
information, displayed in an easily digestible manner.

## Installation

You can install the released version of logVisualizer from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("dwhdai/logVisualizer")
```
