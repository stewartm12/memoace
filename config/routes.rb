Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api do
    resource :session, only: [:create, :destroy]
    resources :posts, except: [:update, :new]
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  get '*path', to: 'pages#index', via: :all
end
