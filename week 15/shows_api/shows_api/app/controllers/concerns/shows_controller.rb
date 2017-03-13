class ShowsController < ApplicationController
  
  def shows_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end
  def index
    shows = Show.all()
    render({json: shows})
  end

  def show
    show = Show.find(params[:id]) 
    render({json: show})
  end

end