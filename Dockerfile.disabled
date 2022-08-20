FROM registry.gitlab.com/sagemath/sage/sagemath-dev:9.0.beta3-py3

RUN sage -i gap_packages && rm -rf /home/sage/sage/upstream
# Make sure the contents of the repository is in ${HOME}!
# Make sure the contents of the repository is in ${HOME}
COPY --chown=sage:sage . ${HOME}
# The sagemath-dev images start in SAGE_ROOT by default so set the user's pwd
# back to HOME
WORKDIR ${HOME}

# The default entrypoint used in the sagemath-dev images does not instantiate a
# sage shell, so commands like jupyter don't work; this should be fixed.
# upstream to make the sagemath-dev images easier to use with binder
ENTRYPOINT [ "/home/sage/sage/docker/entrypoint.sh" ]
