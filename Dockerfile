FROM ubuntu:latest
LABEL Name=weathertools Version=0.0.1

RUN apt update && DEBIAN_FRONTEND="noninteractive" apt install -y python3-cfgrib pip python3-cartopy

RUN pip install jupyterlab

RUN mkdir /opt/notebooks

CMD ["jupyter", "lab", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser",  "--allow-root"]
