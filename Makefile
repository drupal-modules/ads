all:
	phing

install:
	phing ads-install

site:
	phing -D project.drupal.dir=src -f phing/build-site.xml

terms:
	phing -D project.drupal.dir=src -f phing/generate-terms.xml

users:
	phing -D project.drupal.dir=src -f phing/generate-users.xml

ads:
	phing -D project.drupal.dir=src -f phing/generate-ads.xml

content:
	phing -D project.drupal.dir=src -f phing/generate-content.xml

update-src:
	sh ./scripts/update_src.sh
