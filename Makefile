build:
	# "开始构建镜像"
	docker build -t zzjcool/workspace .

test:
	# 测试镜像
	# 请使用docker exec -it test-workspace zsh进入
	docker run -it -v host:/root -v /home:/root/host --name test-workspace --privileged --rm zzjcool/workspace

push:
	docker push zzjcool/workspace