FROM freeradius/freeradius-server:latest

RUN cd /etc/raddb/certs && rm *.crt *.csr *.key *.p12 *.pem *.crl *.der index* && make

# TODO: change to mount them and overlay?
COPY raddb/ /etc/raddb/
