FROM python:3.8.13-alpine3.15
ARG VERSION
ARG RELEASE_DATE

RUN pip install lagring==${VERSION}
COPY development/lagring-entrypoint.sh /lagring-entrypoint.sh

ENTRYPOINT ["/lagring-entrypoint.sh"]

LABEL x.lagring.version="${VERSION}" \
      x.lagring.release-date="${RELEASE_DATE}"