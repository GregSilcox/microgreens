Rails.application.routes.draw do
  resources :greens
  root "microgreens/products#index"
  
  devise_for :users

  namespace :microgreens do
    resources :donations
    resources :fulfillments
    resources :line_items
    resources :orders
    resources :products
  end

  namespace :microcnc do
    resources :posts
  end
end
