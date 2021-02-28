Rails.application.routes.draw do
  get 'teams/index'
  get 'teams/show'
  get 'teams/new'
  get 'teams/edit'
  get 'teams/create'
  get 'teams/update'
  get 'teams/destroy'
  get 'players/index'
  get 'players/show'
  get 'players/new'
  get 'players/edit'
  get 'players/create'
  get 'players/update'
  get 'players/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
