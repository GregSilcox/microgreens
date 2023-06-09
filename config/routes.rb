Rails.application.routes.draw do
  resources :line_items
  resources :orders
  root "microcnc/posts#index"
  
  devise_for :users

  namespace :microgreens do
    resources :products
  end

  namespace :microcnc do
    resources :posts
  end
end
