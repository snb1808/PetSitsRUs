Rails.application.routes.draw do

  resources :appointments
  resources :sitters
  resources :pets
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'owners#index'

end
