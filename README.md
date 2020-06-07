# RMarkdown Template for Business Reports 

This is a package based on the fantastic work of INWTlab, which I have modified
slightly to accomodate my use case. Below is the original README.

This R package provides a LaTeX and RMarkdown template suitable for business
reports. The design and layout is loosly oriented at MS Word defaults. In the
YAML header of the RMarkdown template, you can easily customize the colors,
logos and cover page:

```
---
title: Document Title
author: INWTlab 
date: \today
params:
  logo: logo.png
  cover: cover.png
  iblue: 2b4894
  igray: d4dbde
documentclass: article
fontsize: 10
papersize: a4paper
...
---
```

## Installation

Install the package latex-report-template from GitHub. 

```r
# install.packages("devtools")
devtools::install_github("INWTlab/ireports")
```

## Preview

![preview cover](./inst/resources/preview_cover.png)
![preview page](./inst/resources/preview_page.png)




