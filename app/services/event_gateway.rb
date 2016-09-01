class EventGateway
  def self.build
    new Rails.logger
  end

  def initialize(logger)
    @logger = logger
  end

  def all
    @logger.info "Getting all the events"

    []
  end
end
