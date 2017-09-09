FROM arose/qtrpi:rpi3-qt5.6.2

# Install new dependencies
RUN apt-get update -q && apt-get install -yq --no-install-recommends \
    mono-complete \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install gitsemver
RUN curl -o /gitsemver.deb https://downloads.haprotec.de/gitsemver/gitsemver.deb \
    dpkg -i /gitsemver.deb && \
    rm /gitsemver.deb
