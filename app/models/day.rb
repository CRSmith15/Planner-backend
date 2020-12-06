class Day < ApplicationRecord
    has_many :events
    validates :date, :time, presence: true

    def total_events 
        self.events.length
    end



    def update_total_events
        self.total_events = self.events.length
    end

end
