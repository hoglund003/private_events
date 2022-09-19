class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
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

  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to user_path(current_user.id)
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :description, :datetime, :location)
  end
end
