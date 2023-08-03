# Imagem base do Nginx
FROM nginx

RUN apt-get update && \
    apt-get upgrade -y  && \
    apt-get install -y iputils-ping && \
    apt-get install -y curl && \
    apt-get install telnet -y && \
    apt-get install traceroute -y && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5 && \
    echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list && \
    apt-get update && \
    apt-get install -y mongodb-org

# Expõe a porta do Nginx
EXPOSE 80

# Define o comando de inicialização do contêiner
CMD ["nginx", "-g", "daemon off;"]
