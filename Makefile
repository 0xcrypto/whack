all: php wordpress domain wordlists

php:
	curl https://packagist.org/packages/list.json --silent | jq ".packageNames[]" | sed 's/"//g' > php-composer-packages.txt

wordpress:
	curl https://plugins.svn.wordpress.org/ --silent | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | cut -d'/' -f1 > wordpress-plugins.txt
	curl https://themes.svn.wordpress.org/ --silent | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | cut -d'/' -f1 > wordpress-themes.txt

domain:
	curl https://data.iana.org/TLD/tlds-alpha-by-domain.txt --silent | sed -e 's/\(.*\)/\L\1/' > tlds-alpha-by-domain.txt

wordlists: seclist payloads xajkep bo0om_fuzz rockyou 0xcrypto

seclist:
	wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip && unzip SecList.zip && rm -f SecList.zip && mv SecLists-master SecLists

payloads:
	wget -c https://github.com/swisskyrepo/PayloadsAllTheThings/archive/master.zip -O PayloadsAllTheThings.zip && unzip PayloadsAllTheThings.zip && rm -f PayloadsAllTheThings.zip && mv PayloadsAllTheThings-master PayloadsAllTheThings

xajkep:
	wget -c https://github.com/xajkep/wordlists/archive/master.zip -O xajkep.zip && unzip xajkep.zip && rm -f xajkep.zip && rm wordlists-master/make_readme.py && mv wordlists-master xajkep

bo0om_fuzz:
	wget -c https://github.com/Bo0oM/fuzz.txt/raw/master/fuzz.txt -O bo0om_fuzz.txt

rockyou:
	wget -c https://github.com/zacheller/rockyou/raw/master/rockyou.txt.tar.gz -O rockyou.txt.tar.gz && tar -xzf rockyou.txt.tar.gz && rm rockyou.txt.tar.gz

0xcrypto:
	wget -c https://github.com/0xcrypto/wordlists/archive/master.zip -O 0xcrypto.zip && unzip 0xcrypto.zip && mv wordlists-master 0xcrypto
