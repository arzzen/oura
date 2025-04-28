FROM alpine

# Copy sources
COPY . /app

# Install required packages & build oura
RUN     apk add --no-cache bash git make ncurses util-linux \
    &&  cd /app \
    &&  make install \
    &&  rm -rf /app \
    &&  apk del --no-cache make \
    &&  mkdir -p /usr/local/bin \
    &&  echo -en "#!/bin/bash\nset -e\n[[ \"\${1::1}\" == '-' ]] && set -- /usr/bin/bash oura \"\$@\"\nexec \"\$@\"" \
            > /usr/local/bin/docker-entrypoint \
    &&  chmod +x /usr/local/bin/docker-entrypoint

# Declare all variables usables by oura
ENV TERM=xterm-256color

WORKDIR /oura
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint" ]
CMD [ "/usr/bin/bash", "oura" ]
