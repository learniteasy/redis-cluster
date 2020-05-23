#/bin/bash

mkdir 8000 8001 8002 8003 8004 8005
echo "mkdir 8000 8001 8002 8003 8004 8005 <-- Done"
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
echo "Going to run make redis-staable ..."
make
#make test

