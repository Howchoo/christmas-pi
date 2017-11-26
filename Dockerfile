FROM hypriot/rpi-node:8.1.3

RUN apt-get update \
    && apt-get install \
        libpcap-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /code
WORKDIR /code


COPY package.json /code
RUN npm install

COPY . /code

EXPOSE 80
# CMD ["npm", "start"]
