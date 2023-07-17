class SeasonsController < ApplicationController
  def index
    @seasons = Season.all
    render :index
  end
end
