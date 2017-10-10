git clone https://github.com/p2rkw/xf86-input-mtrack.git --depth=1
cd xf86-input-mtrack
./configure --prefix=/usr
dpkg-buildpackage
