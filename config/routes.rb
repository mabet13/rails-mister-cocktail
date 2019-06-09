Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cocktails/ingredients/new', to: 'ingredients#new'
  get 'cocktails/ingredients', to: 'ingredients#index'
  get '/ingredients', to: 'ingredients#index'
  post '/ingredients', to: 'ingredients#create'
  patch 'cocktails/:id', to: 'cocktails#create'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  post '/new_ingredient', to: 'cocktails#new_ingredient'
  resources :doses, only: [:destroy]
  # resources :ingredients, only: [:index, :show, :new, :create]
end
