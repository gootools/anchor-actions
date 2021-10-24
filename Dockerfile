ARG ANCHOR_VERSION=0.17.0
ARG NODE_VERSION=14
ARG SOLANA_VERSION=v1.7.11

FROM solanalabs/solana:${SOLANA_VERSION}

ARG ANCHOR_VERSION
ARG NODE_VERSION

RUN apt-get update -y && \
    apt-get install curl -y && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get install -y nodejs

RUN npm install -g  yarn \
                    @project-serum/anchor-cli@${ANCHOR_VERSION} \
                    typescript \
                    ts-mocha \
                    mocha \
                    chai

RUN yarn install

ENTRYPOINT []
CMD ["anchor", "test"]
