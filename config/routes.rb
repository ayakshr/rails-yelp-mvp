Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

  # get   'restaurants',      to: 'restaurants#index'

  # get   'restaurants/new',  to: 'restaurants#new'
  # post  'restaurants',      to: 'restaurants#create'

  # get   'restaurants/:id',  to: 'restaurants#show'
end
