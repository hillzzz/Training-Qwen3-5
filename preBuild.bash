#!/bin/bash
# This file contains bash commands that will be executed at the beginning of the container build process,
# before any system packages or programming language specific package have been installed.
#
# Note: This file may be removed if you don't need to use it
pip config set global.extra-index-url https://pypi.ngc.nvidia.com
pip config set global.trusted-host pypi.ngc.nvidia.com

pip install torch torchvision torchaudio \
    --extra-index-url https://pypi.ngc.nvidia.com \
    --upgrade \
    --quiet