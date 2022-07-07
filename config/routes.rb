Rails.application.routes.draw do
  resources :series
  resources :categories
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index'

  root to: 'home#index'
end
