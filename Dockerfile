FROM node:0.10

#RUN groupadd -r snickers \
  #&& useradd -r -g snickers snickers

#RUN mkdir -p /data \
  #&& chown -R snickers:snickers /data

COPY . /app

RUN cd /app && npm install

EXPOSE 80
EXPOSE 443

VOLUME ["/data", "/etc/snitch"]

#USER snickers

CMD cd /app && node snickers

