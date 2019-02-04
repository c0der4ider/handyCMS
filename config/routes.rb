Rails.application.routes.draw do
  resources :posts
  resources :comments
  resources :taxonomies
  resources :terms
  resources :options
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
