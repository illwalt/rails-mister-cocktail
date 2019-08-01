Rails.application.routes.draw do

  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'

  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
