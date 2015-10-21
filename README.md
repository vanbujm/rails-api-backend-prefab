# HTTP API with Web Admin UI

This prefab is for building a back end application that provides a JSON API over HTTP.

The technical landscape is broad, and the goal of this prefab is to make as many
mechanical technical decisions as practically possible so you can focus on the
product instead of solved problems.

# In What Context Might This Be Useful?

You need a cloud-hosted JSON over HTTP API to serve clients such as mobile or rich web applications.

You need an authenticated admin UI to manage the content and data served by the API.

# Technical Approach

| Responsibility        | Chosen Solution          |
| --------------------- | ------------------------ |
| HTTP Stack            | Rails                    |
| Database              | Postgres                 |
| ORM                   | Active Record            |
| DB Migrations         | Active Record Migrations |
| Unit Testing          | RSpec                    |
| Stubbing and spying   | RSpec Mocks              |
| Monitoring            | New Relic                |
| Logging               | Papertrail               |
| Background Jobs       | Sidekiq on Redis         |
| CI                    | SnapCI                   |
| Hosting               | Heroku                   |
| Persistent file store | Amazon S3                |

# More Information

The following documents contain more information about this prefab.

 - [Development Environment Setup][]
 - [Application Description][]
 - [Meetings and Process][]
 - [CD Pipeline][]

# Getting started

Fork this repo and clone it locally.

Read through the documents listed above. [Meetings and Process][] outlines some meetings and legwork you probably want to get started on first. [Development Environment Setup][] and [Application Description][] is a good place to start to get a grip on the technical details.

If there are steps missing or things that could be improved, please open an issue or a pull request.

# How to contribute back?

There is a list of [TODO items][]. If you want to help find something from there and have a crack, and open a pull request.


[Development Environment Setup]: docs/development-environment.md
[Application Description]:       docs/application-description.md
[Meetings and Process]:          docs/meetings-and-process.md
[CD Pipeline]:                   docs/cd-pipeline.md
[TODO items]:    TODO.md
