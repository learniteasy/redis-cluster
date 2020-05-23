#\bin\bash

echo "Shutting down port 8000"
./redis-stable/src/redis-cli -p 8000 SHUTDOWN NOSAVE
./redis-stable/src/redis-cli -p 8001 cluster nodes
echo "\n........................."

echo "Shutting down port 8001"
./redis-stable/src/redis-cli -p 8001 SHUTDOWN NOSAVE
./redis-stable/src/redis-cli -p 8002 cluster nodes
echo "\n........................."

echo "Shutting down port 8002"
./redis-stable/src/redis-cli -p 8002 SHUTDOWN NOSAVE
./redis-stable/src/redis-cli -p 8003 cluster nodes
echo "\n........................."

echo "Shutting down port 8003"
./redis-stable/src/redis-cli -p 8003 SHUTDOWN NOSAVE
./redis-stable/src/redis-cli -p 8004 cluster nodes
echo "\n........................."

echo "Shutting down port 8004"
./redis-stable/src/redis-cli -p 8004 SHUTDOWN NOSAVE
./redis-stable/src/redis-cli -p 8005 cluster nodes
echo "\n........................."

echo "Shutting down port 8005"
./redis-stable/src/redis-cli -p 8005 SHUTDOWN NOSAVE
#./redis-stable/src/redis-cli -p 8000 cluster nodes
echo "\n........................."

echo "All Cluster Nodes were Shut Down..."
