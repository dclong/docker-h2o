FROM dclong/jdk

RUN wget http://h2o-release.s3.amazonaws.com/h2o/rel-wolpert/7/h2o-3.18.0.7.zip -O /scripts/h2o.zip \
    && unzip /scripts/h2o.zip -d /scripts/ \
    && rm /scripts/h2o.zip \
    && mv /scripts/h2o-?.*/ /scripts/h2o/

EXPOSE 54321

COPY scripts/ /scripts/

ENTRYPOINT ["/scripts/init.sh"]
