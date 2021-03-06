class FoodfreecyclecommentsController < ApplicationController
  def create
    @foodfreecycle = Foodfreecycle.find (params[:foodfreecycle_id])
    @foodfreecyclecomment = @foodfreecycle.foodfreecyclecomments.create(foodfreecyclecomment_params)
    redirect_to foodfreecycle_path(@foodfreecycle)
  end
 
 def destroy
    @foodfreecycle= Foodfreecycle.find(params[:foodfreecycle_id])
    @foodfreecyclecomment = @foodfreecycle.foodfreecyclecomments.find(params[:id])
    @foodfreecyclecomment.destroy
    redirect_to foodfreecycle_path(@foodfreecycle)
  end

  private
    def foodfreecyclecomment_params
      params.require(:foodfreecyclecomment).permit(:commenter, :body, :contact)
    end
end


