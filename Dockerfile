FROM rocker/verse:4.0.3

USER root

RUN apt-get update && apt-get install -y fonts-font-awesome

USER rstudio
