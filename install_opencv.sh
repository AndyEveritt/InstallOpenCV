# -------------------------------------------------------------------- |
#                       SCRIPT OPTIONS                                 |
# ---------------------------------------------------------------------|
OPENCV_VERSION='4.1.0.25'       # Version to be installed
OPENCV_CONTRIB='YES'          # Install OpenCV's extra modules (YES/NO)
VENV_PATH="env"                 # Python Virtual environment path
# -------------------------------------------------------------------- |

# Update existing packages
sudo apt-get -y update && sudo apt-get upgrade

# Install CMake
sudo apt-get -y install build-essential cmake pkg-config

# Install some I/O packages to load various image file formats from disk
sudo apt-get -y install libjpeg-dev libtiff5-dev libjasper-dev libpng-dev

# Install some I/O packages to load various video file formats
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install libxvidcore-dev libx264-dev

# Install GTK dev library for highgui
sudo apt-get -y install libfontconfig1-dev libcairo2-dev
sudo apt-get -y install libgdk-pixbuf2.0-dev libpango1.0-dev
sudo apt-get -y install libgtk2.0-dev libgtk-3-dev

# Optimise OpenCV operations
sudo apt-get -y install libatlas-base-dev gfortran

# Install HDF5 datasets and Qt GUIs
sudo apt-get -y install libhdf5-dev libhdf5-serial-dev libhdf5-103
sudo apt-get -y install libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5

# Install Python header files
sudo apt-get -y install python3-dev

# Create venv if required
if [ ! -d $VENV_PATH]
then
    python3 -m venv $VENV_PATH
fi

# Activate venv
source $VENV_PATH/bin/activate

# Install OpenCV
if [$OPENCV_CONTRIB == "YES"]
then
    pip install opencv-contrib-python==$OPENCV_VERSION
elif [$OPENCV_CONTRIB == "NO"]
    pip install opencv-python==$OPENCV_VERSION
fi
