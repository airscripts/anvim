FROM alpine:3.18 AS runner
  LABEL maintainer="Airscript <francesco@airscript.it>"
  WORKDIR /tmp
  COPY . .
  RUN apk add git make neovim && make
  ENTRYPOINT [ "./entrypoint.sh" ]
  CMD [ "nvim" ]
