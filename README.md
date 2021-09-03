# Weathertools

A convenient container for working with weather data in python and Jupyter Lab.

Based on the miniconda3 base container. Comes with the following tools preinstalled:
 - Jupyter Lab
 - cfgrib
 - Cartopy 
 - grib2io
 - pygrib
 - Xarray
 
 
 Launches Jupyter hub on port 8888, default notebook directory is /opt/notebooks

Usage:  
`$ docker run -it -p 8888:8888 jasonwashburn/weathertools:0.0.2`

or to mount your current local directory as the default notebook directory...

`$ docker run -it -v ($pwd):/opt/notebooks -p 8888:8888 jasonwashburn/weathertools:0.0.2`
