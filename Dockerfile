FROM centos:8
RUN dnf check-update && \
    dnf update -y && \
    dnf install -y buildah podman make mysql gettext openssl mysql && \
    curl -o /usr/local/bin/kubectl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    chmod +x /usr/local/bin/kubectl && \
    curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
