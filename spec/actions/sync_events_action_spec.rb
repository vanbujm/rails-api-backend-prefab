require "rails_helper"

RSpec.describe SyncEventsAction do

  let(:event_gateway) {
    instance_spy(EventGateway, all: [])
  }

  let(:logger) {
    instance_spy(ActiveSupport::Logger)
  }

  describe "#call" do
    subject {
      described_class.new(event_gateway, logger).call
    }

    it "updates event records with data from the event gateway"
  end
end
