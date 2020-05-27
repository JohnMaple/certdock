FROM pheye/php-fpm:latest

MAINTAINER Ethan <934879001@qq.com>

# 将源码拷贝到镜像
COPY . /var/www/backend

# 删除.env文件
# RUN cd /var/www/backend && rm -rf .env

# 启动脚本，除了php-fpm还有一些额外的配置
COPY scripts/start.sh /start.sh
RUN chmod +x /start.sh

# 用于任务调度的任务
# COPY scripts/crontab /etc/cron.d/www
# 用于支持worker的启动
# ADD ./scripts/worker.conf /etc/supervisor/conf.d/worker.conf

# 修改属主，确保与php-fpm的用户一致
RUN chown -R www /var/www/backend

VOLUME /var/www/backend

CMD ["/start.sh"]
