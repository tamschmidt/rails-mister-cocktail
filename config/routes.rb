Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
    # resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end


# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   get '/cocktails', to: 'cocktails#index'
#   get '/cocktails/new', to: 'cocktails#new'
#   get '/cocktails/:id', to: 'cocktails#show', as: :show_cocktail
#   post '/cocktails', to: 'cocktails#create', as: :create_cocktail

#   get '/cocktail/cocktail_id/doses', to: 'doses#create', as: :create_dose
#   get '/doses/:id', to: 'doses#destroy', as: :destroy_dose

#   root to: 'cocktails#index'
# end


# Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        cocktails#index
#            cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)                                                  doses#create
#          cocktail_reviews POST   /cocktails/:cocktail_id/reviews(.:format)                                                reviews#create
#                 cocktails GET    /cocktails(.:format)                                                                     cocktails#index
#                           POST   /cocktails(.:format)                                                                     cocktails#create
#              new_cocktail GET    /cocktails/new(.:format)                                                                 cocktails#new
#                  cocktail GET    /cocktails/:id(.:format)                                                                 cocktails#show
#                      dose DELETE /doses/:id(.:format)                                                                     doses#destroy
