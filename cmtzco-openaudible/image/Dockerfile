ARG BASE_IMAGE=ghcr.io/cmtzco/cmtzco-openaudible:4.8.3-d7bf8f9

FROM ${BASE_IMAGE}

COPY entrypoint.sh /app/cmtzco-entrypoint.sh
RUN chmod +x /app/cmtzco-entrypoint.sh

ENTRYPOINT ["/app/cmtzco-entrypoint.sh"]
CMD ["/init"]
