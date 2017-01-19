class ArchiveController < ApplicationController
def new
  end

def create
  @archive = Archive.new(params[:archive])
 
  @archive.save
  redirect_to @archive
end

private
  def article_params
    params.require(:archive).permit(:title, :description, :location, :organiserdetails, :eventduration)
  end

def show
	@archive = Archive.find(params[:id])
  end



end
