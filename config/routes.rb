Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  root to: "lists#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
