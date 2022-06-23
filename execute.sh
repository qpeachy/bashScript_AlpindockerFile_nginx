#execution file

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
