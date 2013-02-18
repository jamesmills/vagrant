echo "Europe/London" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
apt-get update --fix-missing
apt-get -y install php5-sqlite php-apc php5-intl