# Version: 0.0.1
# @edt M06 2018-2019
# hostpam
# -------------------------------------
FROM edtasixm06/hostpam:18auth
LABEL author="@edt ASIX M06-ASO"
LABEL description="host PAM 2018-2019"
RUN dnf -y install openssh-server mlocate tree nmap
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
