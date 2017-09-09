FROM arose/qtrpi:rpi3-qt5.6.2

# Install wget
RUN apt-get update && \ apt-get install -y \
    mono-complete

# Install gitsemver
ADD https://downloads.haprotec.de/gitsemver/gitsemver.deb /
RUN dpkg -i ./gitsemver.deb && rm gitsemver.deb
