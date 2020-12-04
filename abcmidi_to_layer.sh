RPM=/tmp/abcmidi-20201107-1.x86_64.rpm
ZIP=/tmp/abcmidi.zip
LAYER=/tmp/abcmidi-layer.zip
# Source: http://abcplus.sourceforge.net/#abcmidi
# First download the rpm to your /tmp directory

pushd /tmp
curl -O $RPM $RPM_URL
rm $ZIP
rm -rf usr
fpm -s rpm -t zip $RPM
unzip $ZIP
cd usr
zip -r $LAYER .
popd
mv $LAYER .
