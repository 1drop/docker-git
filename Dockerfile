FROM docker:git

RUN apk update -q && apk add -q --no-progress py-pip bash 
RUN pip install -q docker-compose
ADD https://github.com/git-lfs/git-lfs/releases/download/v1.5.5/git-lfs-linux-amd64-1.5.5.tar.gz /tmp/
RUN cd /tmp/ && tar xzf git-lfs-linux-amd64-1.5.5.tar.gz && cd git-lfs-1.5.5 && ./install.sh && cd .. && rm -rf git-*

