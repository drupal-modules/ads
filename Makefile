all:
	phing

install:
	phing ads-install

site:
	phing -f phing/build-site.xml

terms:
	phing -f phing/generate-terms.xml

users:
	phing -f phing/generate-users.xml

ads:
	phing -f phing/generate-ads.xml

content:
	phing -f phing/generate-content.xml

update:
	sh ./scripts/update_src.sh
