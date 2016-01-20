require 'rails_helper'

RSpec.describe "Events API v1" do
  describe "#get" do
    it "presents the next three months of events" do
      event = FactoryGirl.create(:event,
                start_time: Time.now,
                end_time: Time.now + 1.hour)


      get '/api/v1/events'

      expect(response).to be_success

      expect(json[:events].length).to eq(1)
      json_event = json[:events][0]

      [:title, :description].each do |attr|
        expect(json_event[attr]).to eq event.send(attr)
      end

      expect(json_event[:id]).to eq(event.id)
      expect(json_event[:location]).to eq(event.location)
      expect(json_event[:startTime]).to eq(event.start_time.iso8601)
      expect(json_event[:endTime]).to eq(event.end_time.iso8601)
    end
  end
end
