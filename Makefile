tugboat-init:
	curl -sL https://deb.nodesource.com/setup_6.x | bash -
	apt-get install -y nodejs
	npm install --unsafe-perm
	ln -sf /var/lib/tugboat/_book /var/www/html

tugboat-build:
	npm install --unsafe-perm

tugboat-update:
	npm install --unsafe-perm
