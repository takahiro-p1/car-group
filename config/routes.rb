Rails.application.routes.draw do
  
  devise_for :users, 
    controllers: { registrations: 'registrations',
    sessions: :sessions }
  root 'top#index'
  get 'show', to: 'top#show'
  post 'guest_sign_in', to: 'top#guest_sign_in'
  post '/callback' => 'line_bot#callback'
  resources :users, only: [:show, :index]

  resources :reactions, only: [:create]
  resources :matching, only: [:index]
  resources :chat_rooms, only: [:show]
end
