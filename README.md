## RUN : 
docker build -t salmadkier/oracle-client-zip -f Dockerfile.zip .
docker push salmadkier/oracle-client-linux-zip

docker run -it salmadkier/oracle-client-linux-zip sh
ls -l /oracle/
mkdir -p /usr/local/lib/instantclient_12_2
unzip /oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip -d /usr/local/lib/instantclient_12_2
