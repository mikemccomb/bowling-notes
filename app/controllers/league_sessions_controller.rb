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
      series: params[:series] || 0,
      notes: params[:notes] || "",
    )
    render :show
  end

  def show
    @league_session = LeagueSession.find_by(id: params[:id])
    render :show
  end

  def update
    @league_session = LeagueSession.find_by(id: params[:id])
    @league_session.update(
      date: params[:date] || @league_session.date,
      gameone: params[:gameone] || @league_session.gameone,
      gametwo: params[:gametwo] || @league_session.gametwo,
      gamethree: params[:gamethree] || @league_session.gamethree,
      series: params[:series] || @league_session.series,
      notes: params[:notes] || @league_session.notes,
    )
    render :show
  end

  def destroy
    @league_session = LeagueSession.find_by(id: params[:id])
    @league_session.destroy
    render json: { message: "League session destroyed successfully" }
  end
end
