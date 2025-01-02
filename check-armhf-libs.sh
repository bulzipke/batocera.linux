#!/bin/bash

# list libraries in 64 and 32 bit builds
ls output/h700/target/usr/lib | awk 'BEGIN {FS="."} {print $1}' |grep lib | sort | uniq > ./liblist64.txt
ls output/h700_armhf_libs/target/usr/lib | awk 'BEGIN {FS="."} {print $1}' |grep lib | sort | uniq > ./liblist32.txt

echo
echo Missing libs:

diff ./liblist64.txt ./liblist32.txt | grep lib | grep \<

echo
echo Missing libs, ignoring unneeded ones:

diff ./liblist64.txt ./liblist32.txt | grep lib | grep \< \
 | grep -v tss | grep -v SPIRV | grep -v libnss | grep -v avahi \
 | grep -v samba | grep -v libsmb | grep -v pigpio \
 | grep -v libparted | grep -v bluetooth | grep -v libelf \
 | grep -v libext2fs | grep -v libfdisk | grep -v libgamestream \
 | grep -v libjim | grep -v jitterentropye | grep -v lightspark \
 | grep -v mosquitto | grep -v mupen | grep -v libretro \
 | grep -v sqlite | grep -v xtables | grep -v solarus \
 | grep -v moonlight | grep -v ntfs | grep -v libbtrfs \
 | grep -v libi2c | grep -v libndr | grep -v alpm \
 | grep -v libasm | grep -v libgomp | grep -v libsamdb \
 | grep -v wbclient | grep -v libe2p | grep -v nfsid \
 | grep -v libdw | grep -v libSAASound | grep -v libSDL2_mixer_ext

rm liblist*.txt
