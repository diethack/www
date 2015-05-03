# Diethack Homepage

Homepage build automation for [diethack](http://www.diethack.org).
This is a reproducible build: all dependencies versions are frozen.
Among other things, it builds the example diet reports using the actual
library code, so it can be used as a reference when building
[diethack](https://github.com/diethack/diethack).
In the end it deploys everything to the Git repo.

## How to Build

Install [Docker](https://www.docker.com/).

Clone this repo:
   `git clone https://github.com/diethack/www <<<path-to-repo>>>`

Create config file at `/etc/diethack-www/config.sh`:
```
URL='<<<www.diethack.org>>>'
GIT_REPO='<<<git@github.com:diethack/diethack.github.io.git>>>'
GIT_USER='<<<James T. Kirk>>>'
GIT_EMAIL='<<<kirk@enterprise.uss>>>'
ID_RSA_PUB='<<<public ssh rsa key to access to the git repo>>>'
ID_RSA='<<<private ssh rsa key to access to the git repo>>>'
```

Run `<<<path-to-repo>>>/run.sh`

## License

The contents of this repo is licensed under MIT License.

## Contact

Oleg Plakhotniuk: contact@diethack.org
