FROM nginx:1.16

RUN apt-get update && apt-get install -y \
    curl=7* \
    openssl=1.1.1*

RUN echo "SECRET_KEY=12345" > /etc/secret.env && chmod 777 /etc/secret.env

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]