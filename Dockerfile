FROM debian:11

COPY entrypoint.sh /usr/local/bin/

ADD boot /root/boot
RUN set -x && \
    # apt install application
    apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y \
    clang-format \
    wget \
    curl \
    git \
    make \
    gcc \
    g++ \
    unzip \
    zsh \
    openssh-server \
    ca-certificates \
    nano && \
    # install zsh
    sh /root/boot/install_zsh.sh && \
    # copy .rc file
    cp ~/boot/.rc ~/ && \
    echo "source ~/.rc" >> ~/.zshrc && \
    echo "source ~/.rc" >> ~/.bashrc && \
    # install go
    sh /root/boot/install_go.sh && \
    # install ssh
    sh /root/boot/install_ssh.sh && \
    # chmod +x
    chmod +x /usr/local/bin/entrypoint.sh && \
    # clean image
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /root/boot

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 2222
CMD ["/usr/bin/zsh","-l"]