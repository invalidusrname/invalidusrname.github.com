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

Requires [build](https://github.com/invalidusrname/invalidusrname.github.com/actions/workflows/build.yml) workflow to pass. Deployments happen after that via the [pages-build-deployment](https://github.com/invalidusrname/invalidusrname.github.com/actions/workflows/pages/pages-build-deployment) Workflow
