class EventcommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @eventcomment = @event.eventcomments.create(eventcomment_params)
    redirect_to event_path(@event)
  end
 
 def destroy
    @event= Event.find(params[:event_id])
    @eventcomment = @event.eventcomments.find(params[:id])
    @eventcomment.destroy
    redirect_to event_path(@event)
  end

  private
    def eventcomment_params
      params.require(:eventcomment).permit(:commenter, :body, :contact)
    end
end
