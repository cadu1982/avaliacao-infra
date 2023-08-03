# Imagem base do Nginx
FROM nginx

RUN apt-get update && \
    apt-get upgrade -y  && \
    apt-get install -y iputils-ping && \
    apt-get install -y curl && \
    apt-get install telnet -y && \
    apt-get install traceroute -y

# Expõe a porta do Nginx
EXPOSE 80

# Define o comando de inicialização do contêiner
CMD ["nginx", "-g", "daemon off;"]
