all:
	phing

install:
	phing ads-install

site:
	phing -f phing/build-site.xml

users:
	phing -f phing/build-users.xml

content:
        phing -f phing/build-content.xml

ads:
        phing -f phing/build-ads.xml