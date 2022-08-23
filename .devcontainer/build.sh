SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cd $SCRIPTPATH/..
sudo docker build -f ./devcontainer/Dockerfile --tag=ppl-server:latest --build-arg USE_CLANG=1 .

