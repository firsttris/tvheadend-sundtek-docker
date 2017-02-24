#!/bin/bash -x

# Set the uid:gid to run as
[ "$hts_uid" ] && usermod  -o -u "$hts_uid" hts
[ "$hts_gid" ] && groupmod -o -g "$hts_gid" hts

# Start Sundtek
/opt/bin/mediaclient --start

# Start tvheadend
/usr/bin/tvheadend -C -u hts -g hts -c /config