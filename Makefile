composer:
	curl https://packagist.org/packages/list.json --silent | jq ".packageNames[]" | sed 's/"//g' > php-composer-packages.txt
	
