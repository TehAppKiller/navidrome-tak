# navidrome-tak
[![navidrome-tak](https://snapcraft.io/navidrome-tak/badge.svg)](https://snapcraft.io/navidrome-tak)
![snap arch](https://badgen.net/snapcraft/architecture/navidrome-tak)
![snap size](https://badgen.net/snapcraft/size/navidrome-tak/amd64/stable)

## Snap Description
UnOfficial release of Navidrome\
https://snapcraft.io/navidrome-tak

## Navidrome Description
<img src="/icon.svg" width="100">
Navidrome is an open source web-based music collection server and streamer.\
It gives you freedom to listen to your music collection from any browser or mobile device. It's like your personal Spotify!

See https://www.navidrome.org for more details.

## Information
The web interface is accessible by default at http://localhost:4533

Navidrome Release\
'ffmpeg-tak' and 'mesa-2604' snaps are required as dependencies.\
'/var/lib/navidrome' points to '$SNAP_DATA/data'\
'/opt/navidrome/music' points to '$SNAP_COMMON/music'\
Service is restarted on any condition.

Post install commands required to access `/media` and `/mnt` folders and see resources:
```
sudo snap connect navidrome-tak:removable-media
sudo snap connect navidrome-tak:mount-observe
```

**!!! Files can only be written in a directory owned by `root` !!!**\
**!!! `/home` base directory content is not readable !!!**

This is due to current behavior and restrictions of snaps by Canonical.\
Check common doc in FAQ if you want to setup data in `/home` directory.

## FAQ
See common doc about [FAQ](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#FAQ).

### How to access Configuration file
You can access the snap data in 2 ways:

#### - Directly
With default snapd installation:
```
/var/snap/navidrome-tak/current/data/config/navidrome.toml
```

#### - Via shell
In shell mode you can edit the file with Vim:
```
sudo snap run --shell navidrome-tak.navidrome
vi $SNAP_DATA/config/navidrome.toml
```
One help sheet of Vim commands available [here](https://devhints.io/vim).

## Building
See common doc about [building a snap](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Building).

## Versionning
See common doc about [versionning](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Versionning).