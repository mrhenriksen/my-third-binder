FROM docker.io/manimcommunity/manim:v0.17.2

RUN pip install --no-cache-dir jupyterhub

COPY --chown=manimuser:manimuser . /manim
