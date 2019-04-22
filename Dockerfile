FROM rocker/verse:3.5.3

COPY src /src

VOLUME /output
VOLUME /data

RUN /src/docker-scripts/install-latex-packages && \
    /src/docker-scripts/install-r-packages && \
    ln -s /output /data /src

WORKDIR /src

CMD ["R", "-e", "rmarkdown::render('Report.Rmd', output_file='/output/Report.pdf')"]
