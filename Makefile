all:
	phing

install:
	phing ads-install

site:
	phing -f phing/build-site.xml

users:
	phing -f phing/build-users.xml

