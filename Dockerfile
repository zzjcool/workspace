FROM docker:20-dind as docker
FROM debian:11

#  安装docker in docker
COPY --from=docker /usr/local/bin/ /usr/local/bin/
VOLUME /var/lib/docker

COPY config/sources.list /etc/apt/sources.list

# 安装基础环境
RUN set -x && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates && \
    echo "export LC_ALL=en_US.UTF-8"  >>  /etc/profile && \
    apt-get install --no-install-recommends --no-install-suggests -y \
    clang-format \
    wget \
    curl \
    docker-compose \
    git \
    make \
    gcc \
    g++ \
    iputils-ping \
    telnet \
    zip \
    sudo \
    unzip \
    zsh \
    iptables \
    openssh-server \
    ca-certificates \
    nano && \
    # clean image
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* 

COPY config/resolv.conf /etc/resolv.conf

ADD boot /root/boot
# 设置基础环境
RUN set -x  && \
    # install zsh
    sh /root/boot/install_zsh.sh && \
    zsh /root/boot/install_zsh_plugins.sh && \
    # copy .rc file
    cp ~/boot/.rc ~/ && \
    echo "source ~/.rc" >> ~/.bashrc && \
    # install go
    sh /root/boot/install_go.sh && \
    # install kubectl
    sh /root/boot/install_kubectl.sh && \
    # install java8
    sh /root/boot/install_java8.sh && \
    # install java11
    sh /root/boot/install_java11.sh && \
    # install helm
    sh /root/boot/install_helm.sh && \
    # install maven
    sh /root/boot/install_maven.sh && \
    # install ssh
    sh /root/boot/install_ssh.sh && \
    rm -rf /root/boot

ADD config /root/config
COPY entrypoint.sh /usr/local/bin/

# 设置配置等
RUN set -x && \
    cp ~/config/.zshrc ~/.zshrc && \
    echo "export DISPLAY=localhost:10.0" >> ~/.rc && \
    cp -rf ~/config/sshd_config /etc/ssh/sshd_config && \
    cp ~/config/settings.xml ~/.m2/settings.xml && \
    chmod 600 /etc/ssh/sshd_config && \
    rm -rf /root/config && \
    # chmod +x
    chmod +x /usr/local/bin/entrypoint.sh


ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 36000
CMD ["/usr/bin/zsh","-l"]
