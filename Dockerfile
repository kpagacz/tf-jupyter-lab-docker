FROM tensorflow/tensorflow:latest-gpu-py3

EXPOSE 8888

WORKDIR /

RUN pip install --upgrade pip && pip install jupyterlab
RUN jupyter-lab --generate-config
RUN nohup jupyter-lab --no-browser --allow-root --port=8888 --ip=0.0.0.0 &

CMD ["/bin/bash"]
