#/bin/bash
mkdir 8000 8001 8002 8003 8004 8005
echo "mkdir 8000 8001 8002 8003 8004 8005 <-- Done"

cp ./redis-stable/redis.conf ./redis.conf_bkup

echo "Copying redis-stable to 8000 8001 8002 8003 8004 8005"
cp -r redis-stable 8000
cp -r redis-stable 8001
cp -r redis-stable 8002
cp -r redis-stable 8003
cp -r redis-stable 8004
cp -r redis-stable 8005

echo "Copyting redis.conf to 8000 8001 8002 8003 8004 8005"
cp redis.conf 8000

sed -i -e 's/8000/8001/g' redis.conf
cp redis.conf 8001

sed -i -e 's/8001/8002/g' redis.conf
cp redis.conf 8002

sed -i -e 's/8002/8003/g' redis.conf
cp redis.conf 8003

sed -i -e 's/8003/8004/g' redis.conf
cp redis.conf 8004

sed -i -e 's/8004/8005/g' redis.conf
cp redis.conf 8005

sed -i -e 's/8005/8000/g' redis.conf
