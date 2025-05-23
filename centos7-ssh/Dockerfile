FROM fs0ci3ty/centos7-new-repo
LABEL maintainer="widal"
RUN yum install -y openssh-server sudo iproute && yum clean all
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN useradd -m -s /bin/sh hunter
RUN echo -n 'hunter:DzX237EYCo49PSFE7T' | chpasswd
RUN groupadd sudo && usermod -aG sudo hunter
RUN echo '%sudo	ALL=(ALL:ALL) ALL' >> /etc/sudoers
RUN echo -e "Welcome to EDS (Explore the Deep System) Challenge!\n\nHave fun!\n" > /etc/motd
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
