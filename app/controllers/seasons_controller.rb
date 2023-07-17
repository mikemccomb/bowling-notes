class SeasonsController < ApplicationController
  def index
    @seasons = Season.all
    render :index
  end

  def create
    @season = Season.create(
      name: params[:name],
      start_date: params[:start_date],
      end_date: params[:end_date],
      number_sessions: params[:number_sessions],
    )
    render :show
  end
end
