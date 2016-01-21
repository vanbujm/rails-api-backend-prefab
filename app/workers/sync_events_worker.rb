class SyncEventsWorker
  include Sidekiq::Worker

  # Don't retry on failure and don't enqueue duplicate tasks
  # which is ok if this action is idempotent
  sidekiq_options retry: false, unique: :until_executed

  def perform
    SyncEventsAction.build.call
  end
end
