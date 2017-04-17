FROM python:2.7

RUN pip install mutagen
RUN echo "deb http://deb.debian.org/debian jessie non-free" > /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y libttspico-dev

RUN git clone https://github.com/nims11/IPod-Shuffle-4g \
    && cd IPod-Shuffle-4g \
    && install -Dm755 ipod-shuffle-4g.py /usr/bin/ipod-shuffle-4g

ENTRYPOINT ["ipod-shuffle-4g", "/mnt/ipod"]
