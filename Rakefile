# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :brakeman do
  sh 'bundle exec brakeman -z -o brakeman.html'
end

task :bundle_audit do
  sh 'bundle exec bundle-audit update'
  sh 'bundle exec bundle-audit'
end

task security: %w(brakeman bundle_audit)

task precommit: [:security] do
  sh 'bundle exec rspec'
  sh 'bundle exec rubocop'
end
