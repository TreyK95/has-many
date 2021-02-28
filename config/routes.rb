Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'teams#index'
  get '/teams', to: 'teams#index'
  get '/teams/:id', to: 'teams#show', as: :team

  get '/teams/:team_id/players/new', to: "teams#new"

  get '/teams/:team_id/players/:id/edit', to: "players#edit"

  post '/teams/:team_id/players', to: "players#create"
  patch '/teams/:team_id/players/:id', to: "players#update"

  get 'allPlayers', to: 'teams#all_players'
  get '/x', to: 'teams#x'
end
