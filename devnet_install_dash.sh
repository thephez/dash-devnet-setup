# Download / extract Dash Core binaries to home folder
DIR=$(pwd)
DCFILE=dashcore-0.12.3.1-x86_64-linux-gnu.tar.gz

cd
curl -L -O https://github.com/dashpay/dash/releases/download/v0.12.3.1/$DCFILE

tar -xvzf $DCFILE
ls dash*

cd $DIR
