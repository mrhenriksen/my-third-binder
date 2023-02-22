#FROM docker.io/manimcommunity/manim:v0.17.2

##RUN pip install --no-cache-dir jupyterhub
#USER root
#RUN pip install notebook

#ARG NB_USER=manimuser
#ARG NB_UID=1000
#ENV USER ${NB_USER}
#ENV NB_UID ${NB_UID}
#ENV HOME /home/${NB_USER}

#RUN adduser --disabled-password \
#    --gecos "Default user" \
#    --uid ${NB_UID} \
#    ${NB_USER}

#COPY --chown=manimuser:manimuser . /manim
#FROM manimcommunity/manim:v0.17.2

#USER root
#RUN pip install notebook

#ARG NB_USER=manimuser
#USER ${NB_USER}

#COPY --chown=manimuser:manimuser . /manim
FROM manimcommunity/manim:v0.17.2

COPY --chown=manimuser:manimuser . /manim
 
