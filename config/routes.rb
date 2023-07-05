Rails.application.routes.draw do
  devise_for :users
  resources :icones
  resources :uslugis
  resources :icons
  get 'page/home'
  get 'page/kontakt'
  get 'page/nas'
  get 'page/oplata'
  get 'page/usluga'
  get 'salon/index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "salon#index"
end
