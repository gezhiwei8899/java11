FROM ubuntu:20.04
#设置时区
ENV TZ Asia/Shanghai
# 添加文件
RUN sudo cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime \
    && sudo mkdir -p /usr/java \
    && sudo apt-get remove openjdk* \
    && apt install default-jdk   \
    && apt install openjdk-11-jdk-headless
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
