# Personal Site

Prerequisites:

```sh
brew install pre-commit
pre-commit install
```

Getting Started:

```sh
bundle
./bin/jekyll s
open http://localhost:4000
```

Testing:

Not super important, but nice to have some style enforcement in place:

```sh
./bin/rubocop
```

Deploying:

Currently hosted on Heroku.

Things get built and served using Rack::Jekyll (via rackup)

```sh
git push origin heroku
```
