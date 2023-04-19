FROM mambaorg/micromamba:1.4.2
COPY --chown=$MAMBA_USER:$MAMBA_USER airr_tools.yaml /tmp/airr_tools.yaml
RUN micromamba install -y -n base -f /tmp/airr_tools.yaml && \
    micromamba clean --all --yes
