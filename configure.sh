# This script sets some universal parameters.
# It should be run oly once.

# Installing some dependencies if needed
sudo apt-get install -y moreutils
sudo python3.6 -m pip install -r requirements.txt

# Configure path variables used by the platform 
ROOTLINE='FAAS_ROOT="'$(echo $PWD)'"'
echo $ROOTLINE > GenConfigs.py
echo 'WSK_PATH = "'$(which wsk)'"' >> GenConfigs.py
if [[ `which wsk` == '' ]]; then
    echo "[ERROR] The WSK_PATH variable was not set correctly. The 'wsk' binary could not be located in PATH"
fi


# Configure root path
echo $ROOTLINE | cat - invocation-scripts/monitoring-template.sh | sponge invocation-scripts/monitoring.sh
echo $ROOTLINE | cat - monitoring/RuntimeMonitoring-template.sh | sponge monitoring/RuntimeMonitoring.sh

# Make local directories
mkdir -p logs
mkdir -p data_archive
