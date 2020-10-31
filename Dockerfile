FROM jupyterhub/singleuser

USER root
RUN echo "$NB_USER ALL=(ALL) ALL">>/etc/sudoers
USER $NB_USER
RUN pip install youtube-dl
