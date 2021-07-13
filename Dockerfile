#BASE
FROM almalinux
ENV  APP_PATH=/app
WORKDIR $APP_PATH

#Japan
RUN dnf -y upgrade
RUN dnf -y update
RUN dnf -y install glibc-locale-source iproute
RUN dnf clean all
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

#dev
RUN dnf -y module install nodejs:14
RUN npm install express -g
RUN npm install express-generator -g
