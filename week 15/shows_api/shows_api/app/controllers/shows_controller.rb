class ShowsController < ApplicationController

  def index
    render json: Show.all
  end

  def create
    new_show = Show.new
    new_show.title = create_params["title"]
    new_show.series = create_params["series"]
    new_show.description = create_params["description"]
    new_show.image = create_params["image"]
    new_show.programmeID = create_params["programmeID"]
    new_show.save

    render json: Show.all
  end

  def create_params
    params.require(:new_show).permit([:title, :series, :description, :image, :programmeID])
  end

end
