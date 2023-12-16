

all:
	@echo "empty"

install-step1:
	cd step1-配置基础配置; make install

uninstall-step1:
	-cd step1-配置基础配置; make uninstall


install-step2:
	cd step2-测试sidecar方式; make install

uninstall-step2:
	-cd step2-测试sidecar方式; make uninstall


# 默认安装方式
install-sidecar:
	@echo "install"	
	-kubectl apply -f ./juicefs-csi-sidecar.yaml

uninstall-sidecar:
	@echo "uninstall"	
	-kubectl delete -f ./juicefs-csi-sidecar.yaml

get-sidecar:
	@echo "只需要获取1次"
	wget https://raw.githubusercontent.com/juicedata/juicefs-csi-driver/master/scripts/juicefs-csi-webhook-install.sh
	chmod +x ./juicefs-csi-webhook-install.sh
	# 用脚本生成安装文件
	./juicefs-csi-webhook-install.sh print > juicefs-csi-sidecar.yaml


install-minio:
	cd /Users/hfb/Desktop/good-docs/a-k8s相关/a-存储大项相关/a-obs桶服务器配置minio/k8s中单点hostpath/; make install

uninstall-minio:
	-cd /Users/hfb/Desktop/good-docs/a-k8s相关/a-存储大项相关/a-obs桶服务器配置minio/k8s中单点hostpath/;make uninstall


install-redis:
	cd /Users/hfb/Desktop/good-docs/知名中间件主题/redis/快速部署redis并使用;make install


uninstall-redis:
	-cd /Users/hfb/Desktop/good-docs/知名中间件主题/redis/快速部署redis并使用;make uninstall


clean: uninstall-step2 uninstall-step1 uninstall-sidecar uninstall-redis uninstall-minio
	echo "clean"





## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm

helmAppName=juicefs1


install-helm:
	helm install juicefs-csi-driver/ --namespace kube-system --values ./values-mycluster.yaml --name-template ${helmAppName}

uninstall-helm:
	helm uninstall ${helmAppName} --namespace kube-system 

template:
	helm template juicefs-csi-driver/ --namespace kube-system --values ./values-mycluster.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

download:
	helm repo add juicefs https://juicedata.github.io/charts/
	helm search repo juicefs -l
	helm pull juicefs/juicefs-csi-driver --version 0.19.4 --untar 

## 文档： 
