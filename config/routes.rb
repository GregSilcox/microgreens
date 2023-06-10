Rails.application.routes.draw do
  resources :donations
  resources :line_items
  resources :orders
  root "microgreens/products#index"
  
  devise_for :users

  namespace :microgreens do
    resources :line_items
    resources :orders
    resources :products
  end

  namespace :microcnc do
    resources :posts
  end
end
