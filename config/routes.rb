Rails.application.routes.draw do
  resources :likes
  resources :post_categories
  resources :comments
  resources :categories
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
