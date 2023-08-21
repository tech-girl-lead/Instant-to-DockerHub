# Use a small base image
FROM alpine:latest

# Add the Oracle Instant Client ZIP
COPY ./instantclient-basic-linux.x64-12.2.0.1.0.zip /oracle/

# We just want to keep the file in the image, no need to run anything
CMD ["sh"]
