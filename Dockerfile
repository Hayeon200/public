# Step 1 : Ubuntu (base image)
FROM ubuntu:latest

# Step 2 : Nginx install
RUN apt-get update && apt-get -y install -q nginx

# Step 3 : File Copy
COPY ./index.html /var/www/html/

EXPOSE 80

# Step 4 : Nginx Start
CMD ["nginx", "-g", "daemon off;"]
