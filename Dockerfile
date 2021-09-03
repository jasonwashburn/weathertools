FROM continuumio/miniconda3:4.10.3
LABEL name="weathertools" version="0.0.3"

# RUN apt update && DEBIAN_FRONTEND="noninteractive" apt install -y \
#     python3-cfgrib \
#     pip \
#     python3-cartopy \
#     && rm -rf /var/lib/apt/lists/*

RUN apt update \
    && apt install -y gcc \
    && conda install -y --quiet \
    jupyterlab \
    matplotlib \ 
    && conda install -c conda-forge -y --quiet \
    pygrib \
    && pip install grib2io --quiet \
    && mkdir /opt/notebooks

CMD ["jupyter", "lab", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser",  "--allow-root"]
