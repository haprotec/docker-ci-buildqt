FROM arose/qtrpi:rpi3-qt5.6.2

# Install wget
RUN apt update && \ apt install -y wget

# Install gitsemver
RUN wget https://downloads.haprotec.de/gitsemver/gitsemver.deb && \    
    apt install -y ./gitsemver.deb && \
    rm gitsemver.deb
