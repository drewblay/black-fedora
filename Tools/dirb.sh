cwd=$(pwd)
cd /opt
wget https://downloads.sourceforge.net/project/dirb/dirb/2.22/dirb222.tar.gz
tar xvf dirb222.tar.gz
dnf install libcurl libcurl-devel -y
cd dirb222
chmod +x configure
./configure
make
cd /opt
chmod -R 755 dirb222
rm -f dirb222.tar.gz
cd dirb222
mkdir /usr/share/dirb
cp -r wordlists /usr/share/dirb/
chmod -R 755 /usr/share/dirb
ln -s /opt/dirb222/src/dirb /usr/bin/dirb
cd "$cwd"