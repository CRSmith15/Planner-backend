class Api::V1::EventsController < ApplicationController
    before_action :set_day

    
    def index 
        @event = @day.events
        render json: @event
    end

    def create 
        @event = @day.events.build(event_params)
        if @event.save 
            @day.update_total_events
            render json: @day 
        else
            render json: {error: 'Error creating event'}
        end
    end

    def show 
        @event = @day.events.find_by(id: params[:id])
        render json: @event 
    end

    def destroy 
        @event = Event.find(params["id"])
        @day = Day.find(@event.day_id)
        @event.destroy
        render json: @day
    end

    private 
    
    def set_day 
        @day = Day.find(params[:day_id])
    end

    def event_params 
        params.require(:event).permit(:activity, :description, :day_id)
    end
    


end
