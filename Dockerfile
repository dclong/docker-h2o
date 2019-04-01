FROM dclong/jdk

RUN wget http://h2o-release.s3.amazonaws.com/h2o/rel-xu/6/h2o-3.22.1.6.zip -O /scripts/h2o.zip \
    && unzip /scripts/h2o.zip -d /scripts/ \
    && rm /scripts/h2o.zip \
    && mv /scripts/h2o-?.*/ /scripts/h2o/

COPY scripts/ /scripts/

EXPOSE 54321

ENTRYPOINT ["/scripts/sys/init.sh"]
