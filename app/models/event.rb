class Event < ApplicationRecord
  belongs_to :day
  validates :activity, presence: true
end
