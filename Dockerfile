FROM sagemath/sagemath-dev:develop
USER root
RUN apt-get -qq update \
# && apt-get -qq install -y --no-install-recommends make \
 && apt-get -qq clean
USER sage
RUN sage -i gap_packages
# Make sure the contents of the repository is in ${HOME}!
# Make sure the contents of the repository is in ${HOME}
COPY --chown=sage:sage . ${HOME}
