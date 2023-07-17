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

  def show
    @season = Season.find_by(id: params[:id])
    render :show
  end

  def update
    @season = Season.find_by(id: params[:id])
    @season.update(
      name: params[:name] || @season.name,
      start_date: params[:start_date] || @season.start_date,
      end_date: params[:end_date] || @season.end_date,
      number_sessions: params[:number_sessions] || @season.number_sessions,
    )
    render :show
  end
end
