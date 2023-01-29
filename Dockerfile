FROM ubuntu:20.04
#设置时区
ENV TZ Asia/Shanghai
# 添加文件
RUN sudo apt-get update -y \
    && sudo apt-get upgrade -y \
    && sudo apt-get install -y tzdata \
    && sudo ln -sf /user/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && sudo mkdir -p /usr/java \
    && sudo apt-get remove openjdk* \
    && sudo apt install default-jdk   \
    && sudo apt install openjdk-11-jdk-headless
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
