


## 安装
make get

make install-sidecar

make uninstall-sidecar



## 静态配置的示例
https://juicefs.com/docs/zh/csi/guide/pv/#static-provisioning






## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm





以 Sidecar 模式安装 CSI 驱动，所部署的组件只有 CSI Controller，不再需要 CSI Node。对于需要使用 CSI 驱动的 Kubernetes 命名空间，CSI Controller 会监听容器变动，检查是否使用了 JuiceFS PVC，并根据情况为其注入 Sidecar 容器。


## https://juicefs.com/docs/zh/csi/introduction/#sidecar




