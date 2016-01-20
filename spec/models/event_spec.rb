require 'rails_helper'

RSpec.describe Event, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :start_time }
  it { is_expected.to validate_presence_of :end_time }

  describe ".in_next_three_months" do
    it "returns events with a start_time after the beginning of today and before three months time" do
      in_window = FactoryGirl.create(:event,
                start_time: Time.now)
      after_window = FactoryGirl.create(:event,
                start_time: Time.now + 4.months)
      before_window = FactoryGirl.create(:event,
                start_time: Time.now - 1.day)

      expect(Event.in_next_three_months).to eq [in_window]
    end
  end
end
