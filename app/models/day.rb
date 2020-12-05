class Day < ApplicationRecord
    has_many :events
    validates :date, :time, presence: true


    def update_total_events
        self.total_events = Event.count
    end

end
