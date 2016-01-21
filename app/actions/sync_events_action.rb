class SyncEventsAction
  def self.build
    new EventGateway.build, Rails.logger
  end

  def initialize(event_gateway, logger)
    @event_gateway = event_gateway
    @logger = logger
  end

  def call
    events_data = @event_gateway.all

    events_data.each do |event_data|
      @logger.info "Syncing event #{event_data[:id]}"
      # TODO Update the event record
    end
  end
end
