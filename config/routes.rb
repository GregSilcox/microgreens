Rails.application.routes.draw do
  resources :products
  root "posts#index"
  resources :posts
end
