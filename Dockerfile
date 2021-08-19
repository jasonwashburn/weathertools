FROM ubuntu:20.04
LABEL Name=weathertools Version=0.0.1

RUN apt update && DEBIAN_FRONTEND="noninteractive" apt install -y \
    python3-cfgrib \
    pip \
    python3-cartopy \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jupyterlab

RUN mkdir /opt/notebooks

CMD ["jupyter", "lab", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser",  "--allow-root"]
