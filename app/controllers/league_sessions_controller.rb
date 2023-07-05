class LeagueSessionsController < ApplicationController
  def index
    @league_sessions = LeagueSession.all
    render :index
  end
end
