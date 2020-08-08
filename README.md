# git2consul
git2consul

docker run -it -v ~/git2consul/config:/data/config -e ENDPOINT=127.0.0.1 -e PORT=8500  -e DEPLO_KEY_NAME=id_rsa -e CONFIG_NAME=config.json git2consul

配置说明：
1. -v ~/git2consul/config:/data/config
映射宿主机配置目录和容器配置目录映射，主要放:git2consul配置 和 git clone 需要的【私钥】

2. -e ENDPOINT=127.0.0.1 -e PORT=8500 
ENDPOINT：consul的地址  
PORT：consul的端口

3. -e DEPLO_KEY_NAME=id_rsa -e CONFIG_NAME=config.json
DEPLO_KEY_NAME：Git所需在映射配置文件中的私钥名称，如果git不需要，文件可以为空
CONFIG_NAME：git2consul的配置名称，以json为扩展名

注意：如果git需要私钥才能clone的，在容器创建的时候，会要用户授权，然后用户停掉进程后，再启动容器即可。

我的dockerhub地址：https://hub.docker.com/repository/docker/jiangxuewen16/git2consul
我的github地址：https://github.com/jiangxuewen16/git2consul
