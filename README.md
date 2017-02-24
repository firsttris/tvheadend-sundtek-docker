#### tvheadend-sundtek-docker
:tv: docker container for tvheadend with sundtek dvb adapter

#### Notes
don't install sundtek driver on your host.

#### Build
```bash
$ git clone https://github.com/firsttris/tvheadend-sundtek-docker.git
$ cd tvheadend-sundtek-docker
$ docker build -t tvheadend/sundtek .
```

#### Run:
So you propably do not need --link and --device:
In this example i also pass my DVBSky adapter to tvheadend. It dont passes the sundtek adapter because it is not installed on the host.
I also link oscam into the container.
```bash
docker run \
--name="tvheadend" \
--link oscam:oscam \
--restart=always \
--privileged \
--net=bridge \
-v /media/8tb.wd.red/recordings/:/recordings \
-v /home/docker/tvheadend/:/config \
-v /home/docker/picons/:/picons \
-v /etc/localtime:/etc/localtime:ro \
-p 9981:9981 \
-p 9982:9982 \
--device=/dev/dvb/* \
-d tvheadend/sundtek
```

#### Picons:
https://github.com/picons/picons-source
