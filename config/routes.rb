Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'games#index'
  resources :games 
  get '/games_list', to: 'games#list', as: 'games_list'
  resources :players 
end
