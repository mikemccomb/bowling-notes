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
    @league_session[:series] = @league_session[:gameone]
    render :show
  end
end
