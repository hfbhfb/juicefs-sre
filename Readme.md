


## 安装

   1. 获取juicefs脚本并安装controller
      - make get-sidecar

   2. 安装
      - make install-sidecar

   3. 测试，
      - 依赖1: 先要有minio服务器，并修改 nWfva9PJ1pH1a9mbsvid      搜索：marka-dd-k8s-stg-id314siwk
           - 注：与登录操作不是一个端口30376，应该使用30377
      - 依赖2：redis服务器                                       搜索：marka-ld-k8s-stg-id429vuwo
      - cd ./step1-配置基础配置 && make
      - cd ./step2-测试sidecar方式 && make install

   4. 卸载
     - make uninstall-sidecar


## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm
## 注!!!：sidecar方式部署，不能用helm

以 Sidecar 模式安装 CSI 驱动，所部署的组件只有 CSI Controller，不再需要 CSI Node。对于需要使用 CSI 驱动的 Kubernetes 命名空间，CSI Controller 会监听容器变动，检查是否使用了 JuiceFS PVC，并根据情况为其注入 Sidecar 容器。
## https://juicefs.com/docs/zh/csi/introduction/#sidecar







## 静态配置的示例
https://juicefs.com/docs/zh/csi/guide/pv/#static-provisioning











