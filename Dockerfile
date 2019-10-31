FROM sagemath/sagemath-dev:develop
RUN sage -i gap_packages
# Make sure the contents of the repository is in ${HOME}!
COPY --chown=sage:sage . ${HOME}
