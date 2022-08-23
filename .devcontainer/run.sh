SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p /etc/conan && sudo chmod a+rw /etc/conan
sudo docker run -it \
    --volume $SCRIPTPATH/..:/app \
    --workdir /app \
    --env TZ=CST6CDT \
    --user $(id -u):$(id -g) \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/conan:/etc/conan" \
    ppl-server:latest
    #--volume="$HOME:$HOME:ro" \
    #--env HOME=$HOME \
