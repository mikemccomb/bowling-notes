class LeagueSessionsController < ApplicationController
  def index
    @league_sessions = LeagueSession.all
    render :index
  end

  def create
    @league_session = LeagueSession.create(
      date: params[:date],
      gameone: params[:gameone] || 0,
      gametwo: params[:gametwo] || 0,
      gamethree: params[:gamethree] || 0,
      series: params[:series],
      notes: params[:notes] || "",
    )
    render :show
  end

  def show
    @league_session = LeagueSession.find_by(id: params[:id])
    render :show
  end
end
