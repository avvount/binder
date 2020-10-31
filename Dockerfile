FROM jupyterhub/singleuser

USER root
RUN echo "$NB_USER ALL=(ALL) NOPASSWD: ALL">>/etc/sudoers
USER $NB_USER

COPY . .
RUN pip install youtube-dl
