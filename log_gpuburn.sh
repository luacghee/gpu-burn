#!/bin/bash

# Check if the log directory exists, if not, create it
if [ ! -d logs ]; then
    mkdir -p logs
fi

echo "Logging gpu-burn output!"
timestamp=$(date +'%Y%m%d_%H%M%S')
docker run -it --rm --gpus all gpu_burn | tee "logs/$timestamp.log"
