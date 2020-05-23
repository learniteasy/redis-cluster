#/bin/bash

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
echo "Going to run make redis-staable ..."
make
#make test

