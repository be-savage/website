class StandsController < ApplicationController

  authorize_resource

  def index
    @stands = Stand.all
  end

  def new
  end

  def create
    @stand = Stand.new(stand_params)
    if @stand.save
      redirect_to stands_path
    else
      render 'new'
    end
  end

  def destroy
    @stand = Stand.find(params[:id])
    @stand.destroy

    redirect_to stands_path
  end

  private

  def stand_params
    params.require(:stand).permit(:label, :location)
  end
end
