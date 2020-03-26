Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: :show

  resources :recipes do
  #   resources :user_recipes, only: [:create]
    resources :ingredients, only: [:new, :create, :edit, :update]
    resources :steps, only: [:new, :create, :edit, :update]
  end

  # resources :user_recipes, only: [:destroy]
  resources :ingredients, only: [:destroy]
  resources :steps, only: [:destroy]
end
