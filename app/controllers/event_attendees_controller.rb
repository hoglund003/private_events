class EventAttendeesController < ApplicationController

  def create
    @event_attendee = EventAttendee.new(user_id: current_user.id, event_id: params[:event_id])
    
    if @event_attendee.save
      redirect_to event_path(params[:event_id])
    else
      render event_path(params[:event_id])
    end
  end

  def destroy
    event_attendee = EventAttendee.where(user_id: current_user.id, event_id: params[:event_id]).first
    event_attendee.destroy
    redirect_to event_path(params[:event_id])
  end
end
