## Discontinued 
 sold my sundtek-tv sticks and switched to a SAT>IP box

#### tvheadend-sundtek-docker
:tv: docker container for tvheadend with sundtek dvb adapter

[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/tristanteu/tvheadend-sundtek-docker/)



Tvheadend is a TV streaming server and recorder for Linux, FreeBSD and Android supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, ISDB-T, IPTV, SAT>IP and HDHomeRun as input sources.  

[tvheadend.org](https://tvheadend.org/)

`Version 4.1-XXXX`

Offical repository as source:   
https://bintray.com/tvheadend/deb/tvheadend/

### Run:
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
-d tristanteu/tvheadend-sundtek-docker
```

### Important Notice - First Start
Don't install sundtek driver on your host.

### Build
```bash
$ git clone https://github.com/firsttris/tvheadend-sundtek-docker.git
$ cd tvheadend-sundtek-docker
$ docker build -t tristanteu/tvheadend-sundtek-docker .
```

### Picons:
https://github.com/picons/picons-source

## Donate
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KEAR9ZC228YCL)

## License
See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).
