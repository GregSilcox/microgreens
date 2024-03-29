Rails.application.routes.draw do
  root "microgreens/homes#show"

  devise_for :users

  namespace :microgreens do
    resource :home
    resources :crops
    resources :donations
    resources :fulfillments
    resources :greens
    resources :line_items
    resources :orders
    resources :products
    resources :trays
  end

  namespace :microcnc do
    resources :posts
  end
end
