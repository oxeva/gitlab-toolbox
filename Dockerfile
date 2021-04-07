FROM centos:8
RUN dnf update -y && \
    dnf install -y git vim buildah podman make mysql gettext openssl mysql && \
    curl -o /usr/local/bin/kubectl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl && \
    curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
ENV STORAGE_DRIVER="vfs" BUILDAH_FORMAT="docker"
