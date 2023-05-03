Source From: [free radius docker](https://hub.docker.com/r/freeradius/freeradius-server/)

Build the docker image.
```bash
docker build -t my_radius_image -f Dockerfile .
```

Run the docker image.
```bash
docker run -d --rm --name my_radius -p 1812:1812 -p 1812:1812/udp my_radius_image
```

Attach to the docker image.
```bash
docker container exec -it my_radius bash
```

Obtain currently used certs.
```bash
docker container cp my_radius:/etc/freeradius/certs .
```

## Config Note
* [Good explaination about the file structure.](https://networkradius.com/doc/3.0.10/raddb/home.html)
* [FreeRADIUS github with config example.](https://github.com/FreeRADIUS/freeradius-server)
* [FreeRADIUS docs.](https://github.com/FreeRADIUS/freeradius-server/blob/master/doc/antora/modules/raddb/pages/index.adoc) 


### Test using freeradius-utils

Install and test using cleartext-password.
```bash
sudo apt-get install freeradius-utils
radtest bob test localhost 0 testing123
```
