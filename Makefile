


install-sidecar:
	@echo "install"	
	kubectl apply -f ./juicefs-csi-sidecar.yaml

uninstall-sidecar:
	@echo "uninstall"	
	kubectl delete -f ./juicefs-csi-sidecar.yaml

get:
	@echo "只需要获取1次"
	wget https://raw.githubusercontent.com/juicedata/juicefs-csi-driver/master/scripts/juicefs-csi-webhook-install.sh
	chmod +x ./juicefs-csi-webhook-install.sh
	# 用脚本生成安装文件
	./juicefs-csi-webhook-install.sh print > juicefs-csi-sidecar.yaml




## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm

helmAppName=juicefs1


install:
	helm install juicefs-csi-driver/ --namespace kube-system --values ./values-mycluster.yaml --name-template ${helmAppName}

uninstall:
	helm uninstall ${helmAppName} --namespace kube-system 

template:
	helm template juicefs-csi-driver/ --namespace kube-system --values ./values-mycluster.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

download:
	helm repo add juicefs https://juicedata.github.io/charts/
	helm search repo juicefs -l
	helm pull juicefs/juicefs-csi-driver --version 0.19.4 --untar 

## 文档： 
