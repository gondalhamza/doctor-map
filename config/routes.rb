Rails.application.routes.draw do
  resources :dashboard, only: :index
  mount ActionCable.server => '/websocket'

  root to: 'dashboard#index'
end
