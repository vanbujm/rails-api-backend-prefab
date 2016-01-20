class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  def self.in_next_three_months
    start_time = Time.now.beginning_of_day
    end_time = start_time + 3.months

    where("start_time >= ? AND start_time <= ?", start_time, end_time)
  end
end
