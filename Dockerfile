FROM node:20.14.0-alpine3.19

LABEL version="1.1.0"
LABEL node_version="20.14.0"
LABEL repository="http://github.com/vfiee/pnpm"
LABEL homepage="http://github.com/vfiee/pnpm"
LABEL maintainer="vyron <vyronfiee@gmail.com>"

COPY LICENSE README.md /

RUN npm install -g pnpm

CMD ["pnpm", "help"]
