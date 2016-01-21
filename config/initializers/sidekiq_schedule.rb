schedule_file = "config/sidekiq_schedule.yml"

if ENV['SIDEKIQ_CRON_ENABLED'] == 'true' && File.exists?(schedule_file)
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end

# Less logging noise thanks
Sidekiq::Logging.logger.level = Logger::WARN

Sidekiq.configure_server do |config|
  if ENV['SIDEKIQ_CONCURRENCY']
    config.options[:concurrency] = ENV['SIDEKIQ_CONCURRENCY'].to_i
  end
end
