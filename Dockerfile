# 使用官方的 Redis 镜像作为基础镜像
FROM redis:latest

# 将本地的 redis.conf 文件复制到容器中的 /usr/local/etc/redis/ 目录下
COPY redis.conf /usr/local/etc/redis/redis.conf

# 使用自定义的配置文件启动 Redis 服务器
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
