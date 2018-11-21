cwd=$(pwd)
cd /opt
wget http://pentestmonkey.net/tools/unix-privesc-check/unix-privesc-check-1.4.tar.gz
tar -zxvf unix-privesc-check-1.4.tar.gz
rm unix-privesc-check/unix-privesc-check-1.4.tar.gz
cd "$cwd"