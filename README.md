# Example of a github action for texml/texml-to-html

This repository contains a very simple example of how to set up github actions to process a TeX file using [texml](https://github.com/AmerMathSoc/texml) and [texml-to-html](https://github.com/AmerMathSoc/texml-to-html), converting TeX sources into (raw) HTML.

The core pieces in the `./github/workflows` folder are:

- texml.sh - texml dependencies
  - installs texlive and perl dependencies
  - copies the fonts into the right position (for ubuntu 24.04 / texlive 2023)
- texml.yml
  - installs texml and texml-to-html (into a temporary folder that's cleaned up later)
  - runs pdflatex, texml and texml-to-html
  - commits everything back to the repository (i.e. you have to pull after each successful run)
  
