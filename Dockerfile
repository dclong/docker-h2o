FROM dclong/jdk

ARG version=3.18.0.5
ARG H2O=h2o-${version}
ARG JAR=/scripts/${H2O}

RUN wget http://h2o-release.s3.amazonaws.com/h2o/rel-wheeler/3/${H2O}.zip -O /scripts/h2o.zip \
    && unzip /scripts/h2o.zip -d /scripts/ \
    && rm /scripts/h2o.zip \
    && mv /scripts/${H2O}/ /scripts/h2o/

EXPOSE 54321

COPY scripts/ /scripts/

ENTRYPOINT ["/scripts/init.sh"]
