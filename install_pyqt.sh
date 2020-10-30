# -------------------------------------------------------------------- |
#                       SCRIPT OPTIONS                                 |
# ---------------------------------------------------------------------|
PyQt5_VERSION='5.13.0'       # Version to be installed
VENV_PATH="env"                 # Python Virtual environment path
# -------------------------------------------------------------------- |

echo "Installing PyQt5 using Apt..."
sudo apt update
sudo apt install -y python3-pyqt5 python3-venv libatlas-base-dev

echo "Create venv if required"
if [ ! -d $VENV_PATH]
then
    python3 -m venv $VENV_PATH
fi

echo "Activating venv"
source $VENV_PATH/bin/activate

echo "Installing other Python dependencies..."
pip install -r requirements.txt

echo "Add PyQt5 to requirements_dev for local (non Pi) development"
echo "PyQt5==$PyQt5_VERSION" >> requirements_dev.txt

echo "Setting virtualenv to use system site packages, including PyQt5..."
sed -i 's/include-system-site-packages = false/include-system-site-packages = true/' $VENV_PATH/pyvenv.cfg

echo "Done."
