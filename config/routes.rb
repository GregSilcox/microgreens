Rails.application.routes.draw do
  root "microcnc/posts#index"
  
  devise_for :users

  namespace :microgreens do
    resources :products
  end

  namespace :microcnc do
    resources :posts
  end
end
