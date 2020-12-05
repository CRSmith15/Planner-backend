class Event < ApplicationRecord
  belongs_to :day
  validates :task, presence: true
end
