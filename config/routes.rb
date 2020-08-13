Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  get 'cocktails', to: 'cocktails#index'
  get "cocktails/:id", to: "cocktails#show", as: :cocktail
  get "cocktails/new", to: "cocktails#new"
  post "cocktails", to: "cocktails#create"

  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end
