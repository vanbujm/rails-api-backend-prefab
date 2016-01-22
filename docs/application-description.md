# Application Description

This is a highline summary of the application and the technology it uses.

## Models

Models use ActiveRecord and are stored in Postgres.

## Testing

Tests use rspec. Integration level tests for APIs live in `spec/requests`.

[Factory Girl](https://github.com/thoughtbot/factory_girl) is included for building test models.

## API

JSON over HTTP. Uses [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers) for converting models to JSON and [Rack CORS](https://github.com/cyu/rack-cors) for CORS HTTP headers. Look in the `ApiController` for more HTTP headers being set.

Caching of APIs are provided by memcached via [Dalli](https://github.com/petergoldstein/dalli).

## Admin UI

There is an admin UI that lives under `http://localhost:3000/admin`. It is built using [ActiveAdmin](https://github.com/activeadmin/activeadmin). There are examples for adding a model and custom dashboard actions under `app/admin` directory.

Rich text editing of html fields are provided by [ckeditor](http://ckeditor.com/).

## Background Jobs

Background jobs are run via [Sidekiq](https://github.com/mperham/sidekiq). We also include some Sidekiq plugins that provide cron jobs, unique jobs, a web UI for sidekiq including history and job statistics.

Config lives in `config/sidekiq.yml`, `config/initializers/sidekiq_schedule.rb`, and `config/sidekiq_schedule.yml`.

## Code organisation

We follow standard Rails conventions for code. In addition to those we have:

- Workers are under `app/workers`
- Actions are under `app/actions`
- Services are under `app/services`.

## Guard and development

[Guard](https://github.com/guard/guard) will spin up a rails server, automatically run specs on changes, and optionally run memcached, redis and sidekiq.

## Hosting

The app is set up to be hosted on Heroku with the following plugins:

![Heroku Resources](assets/heroku-resources.png)

There are also a few environment variables you'll need to explicitly set:

```
REDIS_PROVIDER:           REDISTOGO_URL
SECRET_KEY_BASE:          asdasdasdasd
SIDEKIQ_CONCURRENCY:      5
SIDEKIQ_CRON_ENABLED:     true
```
