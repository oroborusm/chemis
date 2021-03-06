Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
    resources :hogar_proyects
    resources :industrial_proyects
    resources :contacts
  end


  resources :contacts,  only: [:create]
  resources :hogar_proyects, only: [:index, :show]
  resources :hadjuntos, only: [:create, :destroy, :new]
  resources :industrial_proyects, only: [:index, :show]
  resources :iadjuntos, only: [:create, :destroy, :new]
  

  root 'home#index'

  get 'industria/index'

  get 'hogar/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
