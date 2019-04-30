# tf-jupyter-lab-docker
A custom docker image based on tensorflow/tensorflow:latest-gpu-py3 with Jupyter Lab server on top of it

#### Installation
You need to have docker installed and a running instance of a docker daemon on a host machine.

Input in the host machine:
'''
git clone https://github.com/kpagacz/tf-jupyter-lab-docker
cd tf-jupyter-lab-docker
sudo docker build . -t <your image name here>
'''
