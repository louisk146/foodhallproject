class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event = @event.comments.create(comment_params)
    redirect_to event_path(@event)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :contact)
    end
end
