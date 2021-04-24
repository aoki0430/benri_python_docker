FROM python:3
USER root
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND noninteractive
# 必要なパッケージを記載
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl && \
    apt-get clean

# 必要なPythonパッケージを記載
RUN python -m pip install --upgrade pip && pip install \ 
    beautifulsoup4　\
    ipython \
    jupyterlab \ 
    lightgbm \
    matplotlib \
    numpy \
    optuna \
    pandas \
    requests \
    scikit-learn \
    tqdm \
    urllib3

RUN jupyter serverextension enable --py jupyterlab
ENV DEBIAN_FRONTEND dialog

