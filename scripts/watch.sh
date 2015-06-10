while true; do
    ./scripts/build.sh
    inotifywait -e modify src
done
