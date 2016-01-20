class EventSerializer < ActiveModel::Serializer
  format_keys :lower_camel

  attributes :id, :title, :start_time, :end_time, :description, :location
end
