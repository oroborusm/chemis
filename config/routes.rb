Rails.application.routes.draw do
  devise_for :admins
  resources :contacts,  only: [:create]
  resources :industrial_proyects, only: [:index, :show]
  resources :home_proyects, only: [:index, :show]

  authenticated :admin do
    resources :industrial_proyects
    resources :home_proyects
    resources :contacts
  end

  root 'home#index'

  get 'industria/index'

  get 'hogar/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
