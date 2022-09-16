class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  before_action :authenticate_user!

  def new
    @event = Event.new
  end
  
  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:notice] = "You created an event!"
      redirect_to events_path
    else
      flash.now[:alert] = "Event not created!"
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :datetime, :location)
  end
end
