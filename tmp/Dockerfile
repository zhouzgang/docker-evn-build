FROM debian:stretch-slim
ENV MAX_SIZE=20
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt-get -qq update && apt-get -qq install unzip wget locales-all fontconfig libfreetype6 libjpeg62-turbo libpng16-16 libx11-6 libxcb1 libxext6 libxrender1 xfonts-base xfonts-75dpi

RUN wget -q -P /tmp/temp/ https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.stretch_amd64.deb
RUN wget -q -P /tmp/temp/ https://noto-website.storage.googleapis.com/pkgs/Noto-unhinted.zip

RUN mkdir -p /usr/share/fonts/Noto-unhinted
RUN unzip -qq /tmp/temp/Noto-unhinted.zip -d /usr/share/fonts/Noto-unhinted/
RUN dpkg -i /tmp/temp/wkhtmltox_0.12.6-1.stretch_amd64.deb > /dev/null

RUN apt-get -qq install -f -y
RUN fc-cache -fv
RUN rm -rf /var/lib/apt/lists/* /tmp/temp/
RUN mkdir /pdf
RUN wkhtmltopdf --version

RUN ls -lah /
