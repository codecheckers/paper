FROM rocker/verse:4.0.3

USER root

RUN apt-get update && apt-get install -y fonts-font-awesome

RUN r -e 'tinytex::tlmgr_install(pkgs = c("preprint", \ 
    "babel-english", \
    "mathdesign", \
    "colortbl", \
    "xcolor", \
    "amsmath", \
    "latex-amsmath-dev", \
    "fancyhdr", \
    "setspace", \
    "caption", \
    "lastpage", \
    "xifthen", \
    "ifmtarg", \
    "fp", \
    "ms", \
    "pdftexcmds", \
    "pgf", \
    "todonotes", \
    "iftex", \
    "titlesec", \
    "natbib", \
    "auxhook", \
    "bigintcalc", \
    "bitset", \
    "etexcmds", \
    "gettitlestring", \
    "hycolor", \
    "hyperref", \
    "intcalc", \
    "kvdefinekeys", \
    "kvsetkeys", \
    "letltxmacro", \
    "ltxcmds", \
    "pdfescape", \
    "refcount", \
    "rerunfilecheck", \
    "stringenc", \
    "uniquecounter", \
    "infwarerr", \
    "charter", \
    "kvoptions", \
    "booktabs", \
    "doi", \
    "academicons", \
    "euenc", \
    "fontspec", \
    "tipa", \
    "xunicode", \
    "fontawesome", \
    "helvetic",  \
    "geometry",  \
    "dvips", "ly1"))'

USER rstudio

LABEL maintainer='D. Nüst <daniel.nuest@uni-muenster.de>' \
  org.opencontainers.image.authors='Nüst (daniel.nuest@uni-muenster.de)' \
  org.opencontainers.image.url='https://github.com/codecheckers/paper' \
  org.opencontainers.image.version='1.0.0'
