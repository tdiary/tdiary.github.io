# tDiary.org on Heroku

This repository has files to run www.tdiary.org on heroku.

## how to deploy

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/tdiary/tdiary-org)

or

```
$ heroku container:login
$ heroku container:push web -a tdiary-org
$ heroku container:release web -a tdiary-org
```
