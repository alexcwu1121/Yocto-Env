FROM ubuntu:22.04

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    python3-pip && \
    apt-get clean

# Install repo tool
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo && \
    chmod a+rx /bin/repo
