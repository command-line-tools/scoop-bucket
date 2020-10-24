FROM mcr.microsoft.com/powershell:alpine-3.10

WORKDIR /home/scoop
RUN apk --no-cache add git && \
    git clone -q --depth=1 "https://github.com/lukesampson/scoop" . && \
    ls -la
