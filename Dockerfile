FROM node:12.14.0

LABEL version="2.0.0"
LABEL repository="http://github.com/vfiee/pnpm"
LABEL homepage="http://github.com/vfiee/pnpm"
LABEL maintainer="vyron <vyronfiee@gmail.com>"

LABEL com.github.actions.name="GitHub Action for pnpm"
LABEL com.github.actions.description="Wraps the pnpm CLI to enable common pnpm commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

RUN curl -L https://unpkg.com/@pnpm/self-installer | node

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
