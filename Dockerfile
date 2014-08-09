FROM ubuntu:trusty
MAINTAINER Toshiaki Baba <toshiaki@netmark.jp>
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential
RUN apt-get -y install xvfb xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable
RUN apt-get -y install fontconfig xfonts-intl-japanese xfonts-intl-japanese-big fonts-ipafont fonts-takao
RUN apt-get -y install python-pip python-pyside
RUN /usr/bin/fc-cache -fv
RUN pip install Ghost.py==0.1b3
