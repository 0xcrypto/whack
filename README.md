## `whack`
Whack is a small makefile to scrape wordlists from package managers, plugin databases and other known sources.

## Installing
Wordlists are released weekly using GitHub action that runs `make all` to fetch and zip the wordlists. Github action runs
every sunday 00:00 AM (UTC). To install latest wordlists:

```
wget https://github.com/0xcrypto/whack/releases/latest/download/wordlists.zip && unzip wordlists.zip -d wordlists && rm wordlists.zip
```

To install older versions:

```
# Replace 2023-08-11 with the release date. Each release is on sunday except the manual releases.
# See https://github.com/0xcrypto/whack/releases/
https://github.com/0xcrypto/whack/releases/download/2023-08-11/wordlists.zip && unzip wordlists.zip -d wordlists && rm wordlists.zip
```

## Updating
To update, you can either delete the old downloaded files and install new one, or simply run make as per your needs:

```
# Groups
make all                   # Same as make, downloads new files and replaces existing ones. 
make wordlists          # Downloads Seclist, payload all the things, xajkep's wordlists, bo0om Fuzz.txt and rockyou.txt and wordlists I use.

# Specific Targets
make wordpress          # Downloads wordpress plugins and themes wordlists from codex
make php                # Downloads packages list from packagist (composer)
make domain             # Downloads TLD lists from iana.org
make seclist            # Downloads seclists
make payloads           # Downloads payload all the things
make xajkep             # Downloads xajkep's wordlists
make bo0om_fuzz         # Downloads bo0om_fuzz.txt
make rockyou            # Downloads rockyou.txt
make 0xcrypto           # Downloads 0xcrypto's wordlists
```
> Note that package repositories periodically removes old and obsolete packages so newly generated wordlists might not have these removed packages.

## Contributing
Raise issues to have your wordlists included.

## License
[MIT](https://choosealicense.com/licenses/mit/)
