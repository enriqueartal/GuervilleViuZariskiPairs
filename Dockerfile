FROM sagemath/sagemath:8.8

RUN sage -i database_gap
# Make sure the contents of the repository is in ${HOME}
COPY --chown=sage:sage . ${HOME}
