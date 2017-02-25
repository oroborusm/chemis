Rails.application.routes.draw do
  devise_for :admins

  resources :contacts,  only: [:create]
  resources :hogar_proyects, only: [:index, :show]
  resources :hadjuntos, only: [:create, :destroy, :new]
  resources :industrial_proyects, only: [:index, :show]
  resources :iadjuntos, only: [:create, :destroy, :new]

  authenticated :admin do
    resources :industrial_proyects
    resources :contacts
  end

  root 'home#index'

  get 'industria/index'

  get 'hogar/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
