# README Development Guide

# R function
The start of the template infrastructure is the R function which is used to invoke the markdown. The code is in 
```
R/businessReport.R
```
This is based on pdf_document (from the markdown package). It could actually call rmarkdown::pdf_document rather than re-implement.


# Latex template
The idea is to have a latex template that your content is stuffed into. The latex is not true latex, since it is parameterized so that content can be added. If there are too many parameters, it can get difficult to understand the latex. The default template to consider is what pandoc itself uses. You can generate this template by doing

```
pandoc -D latex
```

Presumably this will continue to update (by the pandoc developers) over time. I store this as

```
pandoc_latex_template_v2.7.3.tex
```

And will customize from there.
