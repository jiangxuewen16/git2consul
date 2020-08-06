# git2consul
git2consul

docker run -it -v ~/git2consul/config:/data/config -e ENDPOINT=127.0.0.1 -e PORT=8500  -e DEPLO_KEY_NAME=id_rsa -e CONFIG_NAME=config.json git2consul
