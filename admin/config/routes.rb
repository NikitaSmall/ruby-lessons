Rails.application.routes.draw do
  resources :categories
  root 'landing#index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
