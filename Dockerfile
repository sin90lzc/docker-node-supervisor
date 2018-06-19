FROM node:9.11.2-alpine
RUN apk -U add supervisor \
	&& mkdir -p /var/log/supervisor \
	&& rm -rf /var/cache/apk

ENTRYPOINT ["/usr/bin/supervisord"]

CMD ["-c","/etc/supervisor/conf.d/supervisord.conf"]
