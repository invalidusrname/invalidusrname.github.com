# Personal Site

Getting started:

```sh
$ pre-commit install
$ bundle
$ ./bin/jekyll s
$ open http://localhost:4000
```

Testing:

Not super important, but nice to have styles in place:

```sh
./bin/rubocop
```

Deploying:

Currently hosted on Heroku.

Things get built and served using Rack::Jekyll (via rackup)

    git push origin master
