Rails.application.routes.draw do
  root to: "league_sessions#index"
  resources :league_sessions
  # get "/league_sessions" => "league_sessions#index"
  # post "/league_sessions" => "league_sessions#create"
  # get "/league_sessions/:id" => "league_sessions#show"
  # patch "/league_sessions/:id" => "league_sessions#update"
  # delete "/league_sessions/:id" => "league_sessions#destroy"
  get "/seasons" => "seasons#index"
  post "/seasons" => "seasons#create"
  get "/seasons/:id" => "seasons#show"
  patch "/seasons/:id" => "seasons#update"
end
