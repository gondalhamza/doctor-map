Rails.application.routes.draw do
  resources :dashboard, only: :index
  mount ActionCable.server => '/websocket'

  get 'time_request' => 'dashboard#time_request'
  root to: 'dashboard#index'
end
