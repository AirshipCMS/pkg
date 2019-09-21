FROM node:alpine

ENV LDFLAGS="-static-libgcc -static-libstdc++"

RUN npm install -g pkg
RUN ln -sf /usr/bin/nodejs /usr/bin/node

WORKDIR /app

ENTRYPOINT ["pkg"]
