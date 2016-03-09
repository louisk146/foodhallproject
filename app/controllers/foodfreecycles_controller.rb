class FoodfreecyclesController < ApplicationController

http_basic_authenticate_with name: "Foodhall", password: "topsecretpassword", only: :destroy

  def index
    @foodfreecycles = Foodfreecycle.all.order('created_at DESC')
  end

  def show
    @foodfreecycle = Foodfreecycle.find(params[:id])
  end

	def new
     @foodfreecycle = Foodfreecycle.new
	end

def edit
  @foodfreecycle = Foodfreecycle.find(params[:id])
end

def create
  @foodfreecycle = Foodfreecycle.new(foodfreecycle_params)
 
if @foodfreecycle.save
  redirect_to @foodfreecycle
else
  render 'new'
end
end

def update
  @foodfreecycle = Foodfreecycle.find(params[:id])
 
  if @foodfreecycle.update(foodfreecycle_params)
    redirect_to @foodfreecycle
  else
    render 'edit'
  end
end

def destroy
  @foodfreecycle = Foodfreecycle.find(params[:id])
  @foodfreecycle.destroy
 
  redirect_to foodfreecycles_path
end


private

  def foodfreecycle_params
    params.require(:foodfreecycle).permit( :food, :location, :description, :email , :image ,:status )
  end
end
