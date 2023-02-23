Rails.application.routes.draw do
  resources :live_online_games do
    resources :comments, only: [:new, :create]
end
