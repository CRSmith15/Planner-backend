class EventSerializer < ActiveModel::Serializer
  attributes :id, :activity, :description, :day_id
end
