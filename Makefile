IMAGE=zzjcool/workspace

build:
	# "开始构建镜像"
	docker build -t ${IMAGE} . \
	--network host

test:
	# 测试镜像
	# 请使用docker exec -it test-workspace zsh进入
	# docker run -it -v host:/root -v /home:/root/host --name test-workspace --privileged --rm ${IMAGE}
	docker run -it --name test-workspace --privileged --rm ${IMAGE}

push:
	docker push ${IMAGE}