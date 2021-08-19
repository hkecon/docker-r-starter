FROM rocker/r-ver:4.1.0

COPY setup.R .
RUN Rscript setup.R


