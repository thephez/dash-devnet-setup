# dash-devnet-setup
Basic example of setting up a Dash devnet via script

* [`devnet_install_dash.sh`](devnet_install_dash.sh) - Downloads Dash Core 0.12.3.2 binaries to your home directory and extracts it there
* [`devnet_start.sh`](devnet_start.sh) - Creates a .conf file for the devnet [named on line 1](devnet_start.sh#L1) of the script and then starts dashd using it (`dashd -conf=<created_conf_file>`)
* [`example-config.conf`](example-config.conf) - Example configuration file
