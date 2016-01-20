FactoryGirl.define do
  factory :event do
    sequence :title do |n| 
      "Event ##{n}"
    end
    start_time "2016-01-20 12:07:50"
    end_time "2016-01-20 12:07:50"
    description "My wicked event"
    location "Your house"
  end
end
