class PlacesController < ApplicationController

  authorize_resource

  def index
    @places = Place.all
  end

  def new
    @stands = Stand.all
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render 'new'
    end
  end

  private

  def place_params
    params.require(:place).permit(:label, :description, :stand_id)
  end
end
