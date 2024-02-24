FROM azul/zulu-openjdk:21-jdk-crac
RUN apt-get update && apt-get install -y curl rlwrap
RUN curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh && chmod +x linux-install.sh && ./linux-install.sh
