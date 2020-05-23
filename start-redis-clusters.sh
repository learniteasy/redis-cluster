#\bin\bash
osascript -e 'tell app "Terminal"
    	do script "cd ./redis-cluster/8000 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8000 Started.."

osascript -e 'tell app "Terminal"
	do script "cd ./redis-cluster/8001 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8001 Started.."

osascript -e 'tell app "Terminal"
        do script "cd ./redis-cluster/8002 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8002 Started.."

osascript -e 'tell app "Terminal"
        do script "cd ./redis-cluster/8003 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8003 Started.."

osascript -e 'tell app "Terminal"
        do script "cd ./redis-cluster/8004 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8004 Started.."

osascript -e 'tell app "Terminal"
        do script "cd ./redis-cluster/8005 && ./src/redis-server ./redis.conf"
end tell'
echo "Node 8005 Started.."

echo "Starting to Create redis-Cluster Nodes with replica 1"
./redis-stable/src/redis-cli --cluster create 127.0.0.1:8000 127.0.0.1:8001 127.0.0.1:8002 127.0.0.1:8003 127.0.0.1:8004 127.0.0.1:8005 --cluster-replicas 1

sleep 5

./redis-stable/src/redis-cli -p  8000 cluster nodes

./redis-stable/src/redis-cli monitor
