all: php wordpress

php:
	curl https://packagist.org/packages/list.json --silent | jq ".packageNames[]" | sed 's/"//g' > php-composer-packages.txt

wordpress:
	curl https://plugins.svn.wordpress.org/ --silent | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | cut -d'/' -f1 > wordpress-plugins.txt
	curl https://themes.svn.wordpress.org/ --silent | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | cut -d'/' -f1 > wordpress-themes.txt
