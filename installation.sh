# install required dependencies
sudo apt-get install -y gcc default-libmysqlclient-dev pkg-config
sudo rm -rf /var/lib/apt/lists/*

# install python-pip
sudo apt-get install python3-pip -y

# install app dependencies
pip install mysqlclient
pip install --no-cache-dir -r requirements.txt

# run app.py
python3 app.py


