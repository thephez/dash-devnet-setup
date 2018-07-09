# Download / extract Dash Core binaries to home folder
DIR=$(pwd)
DCFILE=dashcore-0.12.3.2-x86_64-linux-gnu.tar.gz

cd
curl -L -O https://github.com/dashpay/dash/releases/download/v0.12.3.2/$DCFILE

tar -xvzf $DCFILE

# Change directory back to original location
cd $DIR
