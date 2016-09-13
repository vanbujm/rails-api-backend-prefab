# Development Environment

## Get Started

### Install Storage

Install [Postgres.app][]

```sh
brew install redis memcached
```

### Install Ruby

Install Ruby 2.3.1 using your favourite version manager. Here are the steps if you want to use [chruby][].

```sh
brew install chruby
```

Add the following to your shell profile:

    source /usr/local/opt/chruby/share/chruby/chruby.sh

```sh
$ brew install ruby-build
$ mkdir -p ~/.rubies
$ ruby-build 2.3.1 ~/.rubies/2.3.1
```

Kick up a new shell and switch to 2.3.1 and install [bundler][].

```sh
$ chruby 2.3.1
$ gem install bundler
```

### Get Project Dependencies

```sh
$ gem install bundler
$ bundle install
```

## Running the app

To run just the specs and rails app using guard run:

```sh
$ ./dev
```

To run the full app including sidekiq using guard run:

```sh
$ guard
```

[bundler]: http://bundler.io/
[chruby]: https://github.com/postmodern/chruby
[Postgres.app]: http://postgresapp.com/

## Logging in

For development purposes, you may wish to create a default user to login, you can do this using `rake db:seed`. This will create a user with a username of **admin@example.com** and password of **password**.

## TODO

 - [ ] Use Vagrant because it works out of the box for Macs.
 - [ ] Outline the general approach used in the development environment.
