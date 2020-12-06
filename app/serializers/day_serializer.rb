class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :time
  has_many :events
end
