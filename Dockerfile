FROM node

COPY . /src

WORKDIR /src

RUN apt-get update \
    && npm install \
    && npm install -y -g @angular-devkit/build-angular \
    && npm install -y -g @angular/cli

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]