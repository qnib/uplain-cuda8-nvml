ARG FROM_IMG_REGISTRY=docker.io
ARG FROM_IMG_REPO=qnib
ARG FROM_IMG_NAME="uplain-cuda8"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${FROM_IMG_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN echo ">> Download: ${NV_URL}/cuda/repos/ubuntu1604/x86_64/cuda-nvml-dev-8-0_8.0.61-1_amd64.deb" \
 && wget -qO /tmp/cuda-nvml-dev.deb ${NV_URL}/cuda/repos/ubuntu1604/x86_64/cuda-nvml-dev-8-0_8.0.61-1_amd64.deb \
 && dpkg -i /tmp/cuda-nvml-dev.deb \
 && rm -f /tmp/cuda-nvml-dev.deb
