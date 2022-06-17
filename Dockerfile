#alpin linux & nginx

FROM alpine:3.14 

MAINTAINER mathy <mathypalelo@gmail.com>

#SHELL ["/bin/sh", "-c"]

RUN apk add nginx

#variable qui affiche le chemin absolue de ton dossier actuelle	
CMD ["nginx", "-g", "daemon off;"]
