# Use a small base image
FROM alpine:latest

# Add the Oracle Instant Client ZIP
COPY ./instantclient-basic-linux.x64-12.2.0.1.0.zip /oracle/

# Install required dependencies, add Oracle Instant Client, and remove unnecessary packages
RUN apk add --no-cache libaio unzip && \
    mkdir -p /usr/local/lib/instantclient_12_2 && \
    unzip /oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip -d /usr/local/lib/instantclient_12_2 && \
    rm -rf /oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip && \
    apk del unzip

# Add necessary environment variables and library paths
ENV LD_LIBRARY_PATH /usr/local/lib/instantclient_12_2:$LD_LIBRARY_PATH

# Default command
CMD ["sh"]
