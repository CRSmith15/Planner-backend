class Day < ApplicationRecord
    has_many :events
    validates :date, :time, presence: true
end
