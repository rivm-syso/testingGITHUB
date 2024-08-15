# testingGITHUB

## Create Beautiful Packages With DARA

## Description
DARAtest is an R package that provides a comprehensive suite of statistical tests and tools for analyzing data sets,        making it easier for users to perform accurate and efficient data analysis.

## Installation
Check out the [wiki page about daratools](https://gitlab.rivm.nl/dara/wiki/-/wikis/DARAtools) 
for installation and update instructions.

## Usage
*Use examples liberally, and show the expected output if you can. It's helpful to have the smallest example of usage that you can demonstrate inline, while providing links to more sophisticated examples if they are too long to reasonably include in the README.*

## Support
First point of contact for questions: DARAteam (dara-team-list@rivm.nl)

## Roadmap
*If you have ideas for releases in the future, it is a good idea to list them in the README.*

## Contributing
*State if you are open to contributions and what your requirements are for accepting them.*

## Instructions for developers 
Check out the [wiki page about r packages](https://gitlab.rivm.nl/dara/wiki/-/wikis/DARAtools) 
for elaborate information about R package development. Below we describe the most important 
guidelines and practicalities.

### Requirements
We use the `testthat`, `lintr` and `roxygen2` package for development of tests, code style 
checks and automatic documentation. We also use the `devtools` and `usethis` package during 
development to adhere to standards for R packages and make developing easier! Install them 
in your Rstudio environment:

```r
install.packages(testthat)
install.packages(lintr)
install.packages(roxygen2)
install.packages(knitr)
install.packages(rmarkdown)
install.packages(pkgdown)
install.packages(devtools)
install.packages(usethis)
```

### Guidelines
Type `devtools::load_all()` in your console each time you start developing. This loads 
all dependencies and non-exported functions in the NAMESPACE. This makes developing a lot easier!

To ensure code standardization and quality, follow these guidelines:
- Add tests with `usethis::use_test()`
- Add a new package dependency to the DESCRIPTION file with `usethis::use_package()`. We use 
the `min_version` argument to specify a minimum version. 
- Add a new function dependency to the NAMESPACE with `usethis::use_import_from()`
- Add documentation to new functions by inserting a roxygen skeleton and use `devtools::document()` to
create automatic documentation in the `man` folder, for more information check out this 
[wiki section](https://gitlab.rivm.nl/dara/wiki/-/wikis/Create%20your%20own%20R%20packages#documentation)

## Authors and acknowledgment
This R packages was created by DARAteam (dara-team-list@rivm.nl).
.. 
## License
*For open source projects, indicate how it is licensed.*
