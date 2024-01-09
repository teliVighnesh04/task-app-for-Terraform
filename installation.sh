# install required dependencies
# DEBIAN_FRONTEND variable to "noninteractive," which suppresses interactive prompts
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -q gcc default-libmysqlclient-dev pkg-config
sudo rm -rf /var/lib/apt/lists/*

# update packages
sudo apt-get update

# install python-pip
sudo DEBIAN_FRONTEND=noninteractive apt-get install python3-pip -y

# install app dependencies
pip install mysqlclient
pip install --no-cache-dir -r requirements.txt

# run app.py
python3 app.py


