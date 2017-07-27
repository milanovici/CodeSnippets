terminate(){
        PORT=$1
        echo "Killing tcp port: $PORT"
        lsof -P | grep $PORT | awk '{print $2}' | xargs kill -9
}
