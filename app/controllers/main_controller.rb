class MainController < ApplicationController
  def index
    @teams = Team.all

    render layout: 'home'
  end
end
