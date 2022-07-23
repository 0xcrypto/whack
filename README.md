![What is whack?](https://res.cloudinary.com/hackberry-xyz/image/upload/v1616045859/whack-description.png "What is whack?")

Whack is a small makefile to scrape wordlists from package managers, plugin databases and other known sources.

## Installing
The `.txt` files in this repo are automagically generated wordlists. You can use any specific wordlist by downloading it.
To generate/keep all wordlists, You can either git clone the repo which also gives my already fetched wordlists:

```bash
git clone https://github.com/0xcrypto/whack && cd whack && make
```

or just download the makefile and use it to generate the wordlist:

```bash
mkdir -p whack && curl -sL "https://github.com/0xcrypto/whack/blob/main/Makefile?raw=true" --output whack/Makefile; cd whack && make
```

## Updating
Available `.txt` files in the repository are not always the latest. So it makes sense to keep updating the wordlists and generating on your own end.
Updating is quite easy ie. redownload the makefile and `make` again.

If you have cloned the git repository, you might wanna reset your local changes:

```bash
git reset --hard && git pull && make
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)

