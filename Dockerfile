FROM tensorflow/tensorflow:latest-gpu-py3

EXPOSE 8888

WORKDIR /

RUN pip install --upgrade pip && pip install jupyterlab
RUN ["jupyter-lab", "--genereate-config"]

CMD ["/bin/bash", "-c", "jupyter-lab", "--no-browser", "--allow-root", "--port=8888", "--ip=0.0.0.0"]