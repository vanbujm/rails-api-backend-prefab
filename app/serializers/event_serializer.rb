class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_time, :end_time, :description, :location
end
