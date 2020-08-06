# 基于哪个镜像
FROM node:12
# 将本地文件夹挂载到当前容器
VOLUME /data/config/

ENV DEPLO_KEY_NAME=id_rsa.pub
ENV CONFIG_NAME=git2consul.json
ENV ENDPOINT=127.0.0.1
ENV PORT=8500

RUN apt-get install git && npm install -g git2consul --registry=https://registry.npm.taobao.org && mkdir ~/.ssh

CMD ["sh", "-c", "cp /data/config/${DEPLO_KEY_NAME} ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa && git2consul --endpoint ${ENDPOINT} --port ${PORT} --config-file /data/config/${CONFIG_NAME}"]
