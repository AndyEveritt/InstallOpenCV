# RPi-Install-Tools
For installing software tools on Raspberry Pi

## OpenCV

### Script Options

Parameter                  |    Description
-------------------------- | -----------------------------------------
OPENCV_VERSION='4.1.0.25'  |    Version to be installed
OPENCV_CONTRIB='YES'       |    Install OpenCV's extra modules (YES/NO)
VENV_PATH="env"            |    Python Virtual environment path

### Usage

```bash
wget https://raw.githubusercontent.com/AndyEveritt/RPi-Install-Tools/main/install_opencv.sh
chmod 744 install_opencv.sh

./install_opencv.sh
```


## PyQt5

### Script Options

Parameter                  |    Description
-------------------------- | -----------------------------------------
PyQt5_VERSION='5.13.0'     |    Version to be added to `requirements_dev.txt` for non pi development
VENV_PATH="env"            |    Python Virtual environment path

### Usage

```bash
wget https://raw.githubusercontent.com/AndyEveritt/RPi-Install-Tools/main/install_pyqt.sh
chmod 744 install_opencv.sh

./install_opencv.sh
```
