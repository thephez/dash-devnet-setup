DEVNET_NAME=dashblog
PORT=19999
RPCPORT=19998
RPCUSER=user
RPCPASS=pass
NODE="devnet.thephez.com:19999"

# Create the configuration file
echo "# WARNING - THIS FILE AUTO-GENERATED" > devnet-$DEVNET_NAME.conf
echo "# CHANGES WILL BE OVERWRITTEN!" >> devnet-$DEVNET_NAME.conf
echo "# ----------------------------------" >> devnet-$DEVNET_NAME.conf
echo "devnet=$DEVNET_NAME" >> devnet-$DEVNET_NAME.conf
echo " " >> devnet-$DEVNET_NAME.conf
echo "port=$PORT" >> devnet-$DEVNET_NAME.conf
echo "rpcport=$RPCPORT" >> devnet-$DEVNET_NAME.conf
echo " " >> devnet-$DEVNET_NAME.conf
echo "rpcuser=$RPCUSER" >> devnet-$DEVNET_NAME.conf
echo "rpcpassword=$RPCPASS" >> devnet-$DEVNET_NAME.conf
echo " " >> devnet-$DEVNET_NAME.conf
echo "# Hard-coded first node" >> devnet-$DEVNET_NAME.conf
echo "addnode=$NODE" >> devnet-$DEVNET_NAME.conf


CONF_FILE=$(pwd)/devnet-$DEVNET_NAME.conf
echo "Using config file: $CONF_FILE"

~/dashcore-0.12.3/bin/dashd -conf=$CONF_FILE &

echo "Waiting for dashd to start..."
sleep 3

# Next line manually adds a node via dash-cli
#~/dashcore-0.12.3/bin/dash-cli -conf=$CONF_FILE addnode "devnet.thephez.com:19999" "add"
~/dashcore-0.12.3/bin/dash-cli -conf=$CONF_FILE getinfo

# View/follow the debug.log file
tail -f ~/.dashcore/devnet-$DEVNET_NAME/debug.log
