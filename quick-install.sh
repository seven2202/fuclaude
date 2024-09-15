#!/bin/bash
set -e

## 下载文件到本地
echo "clone repository..."
git clone --depth=1 https://github.com/seven2202/fuclaude.git fuclaude

cd fuclaude

docker compose pull
docker compose up -d --remove-orphans

echo "服务启动成功，请访问 http://ip:8181"