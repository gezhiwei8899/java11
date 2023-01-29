FROM ubuntu:20.04
#设置时区
ENV TZ Asia/Shanghai
# 添加文件
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y tzdata \
    && ln -sf /user/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && mkdir -p /usr/java \
    && apt-get remove openjdk* \
    && apt install default-jdk   \
    && apt install openjdk-11-jdk-headless
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
