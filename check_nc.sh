until nc -z 127.0.0.1 8546
do
    echo "Waiting for node to be accessible"
    sleep 5
done
