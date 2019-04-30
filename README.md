# tf-jupyter-lab-docker
A custom docker image based on tensorflow/tensorflow:latest-gpu-py3 with Jupyter Lab server on top of it

#### Installation
You need to have docker installed and a running instance of a docker daemon on a host machine.

Input in the host machine:
```bash
git clone https://github.com/kpagacz/tf-jupyter-lab-docker
cd tf-jupyter-lab-docker
sudo docker build . -t test1
```
First command clones this repository's files into the host machine's data system.
Second one change working directory containing the files.
Third one is responsible for building a Docker image. You can change test1 to anything you want.
You can make sure that the image has been created by:
```bash
sudo docker images
```
You should be able to see an image called test1. This is our image!

### Running the container
```bash
sudo docker run -dit --name test-lab --p hostport:8888 test1
```
This will run a container named test-lab on a port number hostport (please input a real number here). 
You should be able to see your running container via:
```bash
sudo docker ps
```
### Connecting to the container
The first time you are connected to a jupyter lab instance, you should be asked for a token. This token is generated automatically on the container startup. To retrieve it, type into host machine's shell:
```bash
sudo docker logs test-lab
```
You should be able to see a URL with a token parameter. Copy it into the browser and you are good to go!
