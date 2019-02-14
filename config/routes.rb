Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index'
  get '/cocktails/new', to: 'cocktails#new'
  get '/cocktails/:id', to: 'cocktails#show', as: :show_cocktail
  post '/cocktails', to: 'cocktails#create', as: :create_cocktail

  root to: 'cocktails#index'
end
