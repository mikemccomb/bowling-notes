Rails.application.routes.draw do
  get "/league_sessions" => "league_sessions#index"
  post "/league_sessions" => "league_sessions#create"
  get "/league_sessions/:id" => "league_sessions#show"
end
