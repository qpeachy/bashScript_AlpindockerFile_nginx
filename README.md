# bashScript_AlpindockerFile_nginx

This bash script(for MAC only) will allow u too:

download Docker Desckstop(What's Docker?: https://www.docker.com/) & Open it

create a container using Alpin Linux's image

via this image, doxnloade nginx(What's Niginx?: https://www.nginx.com/)

## Dockerfile
```bash
#FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions
#importing Alpin Linux image from DockerHub (": 0.0" = version of the image you want)
FROM alpine:3.14 

#RUN instruction will execute any commands in a new layer on top of the current image and commit the results
#download nginx software
RUN apk add nginx

#CMD is to provide defaults for an executing container.
#run the process on foreground otherwise with daemon on, it will run on background and end as soon as the container will turn on 
CMD ["nginx", "-g", "daemon off;"]

```
## Bash file 
```bash
#Update package
brew update

#install Docker, --cask allows the installation without needed to manually drag the app in "Applications"
brew install docker --cask

#open the app via its path
open /Applications/Docker.app

#run the Dockerfile while naming it
docker build . -t imageName

#shows all the currents images
docker images

#ask the user to manually input the image id and naming this image for the bash file
read -p "Enter the image id: " idimage

#-p : publish(port) -d : run container in background and print container ID
docker run -d -p 8080:80 $idimage
```
