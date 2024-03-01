FROM public.ecr.aws/docker/library/debian:bookworm-slim
RUN apt-get update && apt-get install -y curl rlwrap
RUN curl -o zulu.tar.gz -L https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-crac-jdk21.0.2-linux_$(uname -m | sed -e 's/x86_64/x64/').tar.gz
RUN tar -zxvf zulu.tar.gz && rm -rf zulu.tar.gz
RUN ln -s /zulu* /jdk

ENV JAVA_HOME=/jdk
ENV PATH=${JAVA_HOME}/bin:$PATH

RUN curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh && chmod +x linux-install.sh && ./linux-install.sh
