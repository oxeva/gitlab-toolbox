FROM alpine
RUN apk update && \
    apk upgrade && \
    apk add git make mariadb-client gettext openssl vim && \
    curl -o /usr/local/bin/kubectl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl && \
    curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
