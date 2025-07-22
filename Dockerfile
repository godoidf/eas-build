FROM ghcr.io/expo/expo-github-action:latest

ENV KOTLIN_VERSION=1.9.0

RUN apt-get update && apt-get install -y curl unzip

RUN curl -L -o kotlin-compiler.zip https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip && \
    unzip kotlin-compiler.zip -d /opt && \
    rm kotlin-compiler.zip && \
    ln -s /opt/kotlinc/bin/kotlinc /usr/local/bin/kotlinc && \
    ln -s /opt/kotlinc/bin/kotlin /usr/local/bin/kotlin

RUN kotlin -version
