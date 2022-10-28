Rails.application.routes.draw do
 resources :lists, only: [:index, :new, :create, :show, :destroy] do
  resources :bookmarks, only: [:new, :create]
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
