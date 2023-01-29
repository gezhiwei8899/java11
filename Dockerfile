FROM ubuntu:20.04
#设置时区
ENV TZ Asia/Shanghai
# 添加文件
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y tzdata \
    && mkdir -p /usr/java \
    && apt-get remove openjdk* \
    && apt install default-jdk  -y \
    && apt install openjdk-11-jdk-headless -y
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
