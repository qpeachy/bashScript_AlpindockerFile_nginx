#execution file

#brew update

#brew install docker --cask

open /Applications/Docker.app

docker build . -t test

docker images

read -p "Entrée l'id de l'image: " idimage

#-p : publish(port d'entrée) -it: instructs Docker to allocate a pseudo-TTY connected to the container’s stdin; creating an interactive
docker run -d -p 8080:80 $idimage
