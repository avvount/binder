FROM jupyterhub/singleuser

USER root
RUN apt update && apt install -y ffmpeg x264 x265
RUN echo "$NB_USER ALL=(ALL) NOPASSWD: ALL">>/etc/sudoers
USER $NB_USER

COPY --chown=$NB_USER:users . ./
RUN pip install youtube-dl
