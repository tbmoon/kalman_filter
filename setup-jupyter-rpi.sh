#!/bin/bash

sudo apt-get install gfortran
sudo apt-get install libatlas-base-dev
sudo apt install libjasper-dev
sudo apt install libqtgui4 python3-pyqt5 libqt4-test

python3 -m venv venv3
source venv3/bin/activate
pip install --upgrade --force-reinstall --no-cache-dir jupyter;
pip install numpy matplotlib scipy scikit-image
# https://github.com/EdjeElectronics/TensorFlow-Object-Detection-on-the-Raspberry-Pi/issues/67#issuecomment-557679983
pip install opencv-python==3.4.6.27
pip install opencv-contrib-python

