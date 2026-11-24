#!/bin/bash -e

# Define config file
config_file="$SNAP_DATA/config/navidrome.toml"

# Check if config file exists
if [ ! -f $config_file ]; then
    echo "! Configuration file does not exist !"
else
    # Recover used port
	port=$(sed -nr 's/^Port[[:space:]]*=[[:space:]]*([0-9]+).*/\1/p' $config_file)
	
	# if port is empty, it means default port is used 4533
	if [[ -z "$port" ]]; then
        echo "! No port defined ; using default 4533 port !"
        port=4533
    fi
	
	# Launch url
	xdg-open http://localhost:$port
fi
