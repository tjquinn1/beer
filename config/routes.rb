Rails.application.routes.draw do
  resources :grains
  resources :recipes
  resources :beer_mains

	root "beer_mains#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
