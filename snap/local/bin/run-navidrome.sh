#!/bin/bash -e

# Check configuration file
if [ ! -f $SNAP_DATA/config/navidrome.toml ]; then
    echo "! Configuration file does not exist !"
	echo "Making configuration directory..."
	mkdir -p $SNAP_DATA/config
	echo "Create original configuration file..."
	cp $SNAP/etc/navidrome/navidrome.toml $SNAP_DATA/config/
	echo "Configuration file initialized."
	
	echo "Making default directories..."
	mkdir -p $SNAP_DATA/data
	mkdir -p $SNAP_COMMON/music
	echo "Default directories made."
fi

# Launch app
echo "Launching app..."
$SNAP/usr/bin/navidrome --configfile "$SNAP_DATA/config/navidrome.toml" #--datafolder "$SNAP_DATA/data" --musicfolder "$SNAP_COMMON/music"
