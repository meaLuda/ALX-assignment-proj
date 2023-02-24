Rails.application.routes.draw do
  resources :liked_teams
  resources :games, only: [:index]

  root 'games#index'

  # Save game on like
  post 'standings/like', to: 'standings#like', as: 'like_standings'
end