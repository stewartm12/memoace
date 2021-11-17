Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api do
    resources :posts
    resources :comments, only: [:create, :destroy]
  end

  get '*path', to: 'pages#index', via: :all
end