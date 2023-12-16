
# NS=ns-juicefs-test1
NS=default

status:
	kubectl get po -n  ${NS}
	kubectl get ns  ${NS} -oyaml

install:
	-kubectl create ns ${NS}
	-kubectl label namespace ${NS} juicefs.com/enable-injection=true --overwrite
	-kubectl apply -f app1.yaml -n  ${NS}

uninstall:
	-kubectl delete -f app1.yaml -n  ${NS}

