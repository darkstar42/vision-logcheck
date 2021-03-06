# Testing

## Prerequisites

`Docker` and `ruby` need to be installed on the local machine.

## Running Tests

After cloning the repository the testing environment should be set up on the
local machine:

```
$ bundle install --path vendor/bundle
$ bundle exec rake
```

With running `rake` the whole testsuite is triggered, this
includes:

  * puppet syntax validation
  * code-style enforcement (with `puppet-lint`)
  * unit-tests (with `rspec-puppet`)
  * acceptance-tests (with `beaker-rspec`)

## Coding Standards

* All variables are defined in the base manifest (init.pp)
* Two spaces indent
* No more than 140 characters per line
* Every module uses a data/common.yaml for default values
* There should be default values for **non** security relevant variables
