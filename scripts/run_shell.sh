#!/bin/bash
# Docker 컨테이너의 bash 쉘로 진입합니다.
IMAGE_NAME="chwoong/team_00_project:0.1.0"

docker run -it --rm \
  --platform linux/amd64 \
  -v $(pwd):/workspace \
  --name farm-sim-container \
  $IMAGE_NAME \
  /bin/bash