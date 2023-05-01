FROM freeradius/freeradius-server:latest

RUN apt-get update \
 && apt-get install --yes \
                    vim-tiny \
 && rm -rf /var/lib/apt/lists/*

RUN cd /etc/raddb/certs && rm *.crt *.csr *.key *.p12 *.pem *.crl *.der index* && make

# TODO: change to mount them and overlay?
COPY raddb/ /etc/raddb/
