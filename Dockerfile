FROM fedora:43

RUN dnf install -y curl pkg-config gcc git raylib-devel \
    libX11-devel libGL-devel mesa-libGL-devel \
    libXcursor-devel libXrandr-devel libXi-devel \
    && dnf clean all

RUN curl -fsSL https://wave-lang.dev/install.sh | bash -s -- latest

ENV PATH="/root/.wave/bin:${PATH}"

WORKDIR /work

CMD ["/bin/bash"]
