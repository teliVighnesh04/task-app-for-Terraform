# update system 
sudo apt-get update
sudo apt-get upgrade -y

# take clone of project
git clone https://github.com/teliVighnesh04/task-app-for-Terraform.git
cd task-app-for-Terraform/ 

# install required dependencies
sudo apt-get install -y gcc default-libmysqlclient-dev pkg-config
sudo rm -rf /var/lib/apt/lists/*

# install python-pip
sudo apt install python3-pip -y

# install app dependencies
pip install mysqlclient
pip install --no-cache-dir -r requirements.txt




