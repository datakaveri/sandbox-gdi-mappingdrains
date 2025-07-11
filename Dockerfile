FROM private-registry.iudx.org.in/gdi-sandbox:gdal-base

COPY . ${HOME}
USER root
RUN pip3 install scipy seaborn pysheds geopandas rasterio folium rioxarray leafmap whitebox graphh dash dash-leaflet

USER ${NB_USER}
