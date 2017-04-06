class EventsController < ApplicationController

http_basic_authenticate_with name: "Foodhall", password: "topsecretpassword", only: :destroy

#def search
 # @songs = Event.search(params[:query])
  #if request.xhr?
   # render :json => @event.to_json
  #else
   # render :index
  #end
#end

def archive
  @events = Event.all.order(date: :desc)
  @upcoming_events = Event.where("date > ?", Time.now)
  @past_events = Event.where("date < ?", Time.now)
end


def index
    @events = Event.search((params[:q].present? ? params[:q] :'*')).records
    @upcoming_events = Event.where("date > ?", Time.now)
    #@past_events = Event.where("date < ?", Time.now)
end
  
#other search controls
   # @events = Event.search((params[:q].present? ? params[:q] : '*')).records

#ghosts of different search controls
   # search = params[:term].present? ? params[:term] : nil
  #@events = if search
   # Event.where('title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
  #else
   # Event.all.order(date: :desc)
  #end


   #@events =Event.search(params[:term])

 def show
    @event = Event.find(params[:id])
  end

def new
	@event = Event.new
end

def edit
  @event = Event.find(params[:id])
end

def create
  @event = Event.new(event_params)
 
 if @event.save
  redirect_to @event
else
	render 'new'
end
end

def update
  @event = Event.find(params[:id])
 
  if @event.update(event_params)
    redirect_to @event
  else
    render 'edit'
  end
end

def destroy
  @event = Event.find(params[:id])
  @event.destroy
 
  redirect_to events_path
end

private
  def event_params
    params.require(:event).permit(:title, :image, :location, :description, :email, :date , :starttime, :endtime)
  end
end
