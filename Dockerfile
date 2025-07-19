FROM ghcr.io/expo/expo-github-action:node

RUN curl -s "https://get.sdkman.io" | bash && \
    bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install kotlin 2.1.0 && sdk install gradle"

ENV KOTLIN_VERSION=2.1.0

RUN kotlin -version && gradle -v && java -version

WORKDIR /app
