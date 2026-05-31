#!/bin/bash

# scripts/run.sh
docker run -it --rm \
  --platform linux/amd64 \
  -v "$(pwd)":/workspace \
  --name farm-sim-container \
  chwoong/team_00_project:0.1.0 \
  /workspace/build/main