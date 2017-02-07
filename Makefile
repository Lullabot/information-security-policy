tugboat-init:
	curl -sL https://deb.nodesource.com/setup_6.x | bash -
	apt-get install -y nodejs
	npm install
	ln -sf /var/www/html /var/lib/tugboat/_book

tugboat-build:
	npm install

tugboat-update:
	npm install
