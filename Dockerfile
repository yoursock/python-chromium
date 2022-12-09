FROM python:3.6

# add apt sign and install packages
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN apt-get -y update && apt-get install -yqq unzip && apt install -y vim ttf-wqy-zenhei xfonts-intl-chinese libgbm1

# install chromium 1010009
RUN wget -O /tmp/chrome-linux_1010009.zip https://registry.npmmirror.com/-/binary/chromium-browser-snapshots/Linux_x64/1010009/chrome-linux.zip
RUN mkdir -p /root/.local/share/pyppeteer/local-chromium/1010009 && unzip /tmp/chrome-linux_1010009.zip -d /root/.local/share/pyppeteer/local-chromium/1010009 && rm -rf /tmp/chrome-linux_1010009.zip
