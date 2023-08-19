!/bin/sh
sudo apt update
sudo apt install build-essential automake autoconf libtool libboost-all-dev qtbase5-dev qt5-qmake libfontconfig1-dev libaudio-dev libxt-dev libglib2.0-dev libxi-dev libxrender-dev flex bison cmake unzip
unzip rcssserver-master.zip
cd rcssserver-master
./bootstrap
./configure
make -j8
mkdir build
cd build 
cmake .. 
make -j8
sudo make install
sudo ldconfig
cd ../../
unzip librcsc-master.zip
cd librcsc-master
./bootstrap
./configure
make -j8
sudo make install
cd ..
unzip soccerwindow2-master.zip
cd soccerwindow2-master
./bootstrap
./configure
make -j8
mkdir build
cd build 
cmake .. 
make -j8
cd ..
echo "include /usr/local/lib" | sudo tee -a /etc/ld.so.conf
sudo make install
sudo ldconfig
