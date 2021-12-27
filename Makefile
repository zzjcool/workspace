build:
	# "开始构建镜像"
	docker build -t zzjcool/workspace .

test:
	# 测试镜像
	# 请使用docker exec -it workspace zsh进入
	docker run -it --name workspace --net host --rm zzjcool/workspace

push:
	docker push zzjcool/workspace