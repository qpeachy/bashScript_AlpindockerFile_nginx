#FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions
#importing Alpin Linux image from DockerHub (": 0.0" = version of the image you want)
FROM alpine:3.14 

#RUN instruction will execute any commands in a new layer on top of the current image and commit the results
#download nginx software
RUN apk add nginx

#CMD is to provide defaults for an executing container.
#run the process on foreground otherwise with daemon on, it will run on background and end as soon as the container will turn on 
CMD ["nginx", "-g", "daemon off;"]
