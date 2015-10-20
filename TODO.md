# TODO items for this Prefab

Are you interested in taking any of these on? Open an issue in Github and let the team know.

## Code (Phase 1)

 - [ ] Create a clean Rails application, gut the cruft, and add the basic gems etc...
     - [ ] Should the app live in a subdirectory rather than the root?
     - [ ] Add a simple user model and enable it in Active Admin.
     - [ ] Use ActiveModel::Serializer for an example JSON API endpoint.
 - [ ] Add script that renames the application and updates the app secret etc...
 - [ ] Come up with Vagrant setup for dev environment [ala. discourse](https://github.com/discourse/discourse/blob/master/docs/VAGRANT.md)?
     - [ ] Use foreman for process management (including Sidekiq for background jobs) to keep things as close to heroku as possible.
     - [ ] Single user in Ubuntu instance with single ruby installed, plus local Postgres and resque for Sidekiq background jobs.
 - [ ] Create `go` script that fires up Vagrant and gets the dev party started.
 - [ ] Create CI scripts.
 - [ ] Set up papertrail for log collection.
 - [ ] What to do for monitoring?

## Code (Phase 2 and beyond...)

 - [ ] Add OAuth?

## Writing

 - [ ] Flesh out each of the documents. Notes are in each of them.
