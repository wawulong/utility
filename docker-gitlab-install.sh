#!/bin/sh

sudo docker run --detach \
	--hostname gitlab.example.com \
	--publish 443:443 --publish 80:80 \
	--name gitlab \
	--restart always \
	--volume /gitlab/config:/etc/gitlab \
	--volume /gitlab/logs:/var/log/gitlab \
	--volume /gitlab/data:/var/opt/gitlab \
	gitlab/gitlab-ce:latest
