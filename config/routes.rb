Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :movies, only: [:index, :show, :create]
  resources :customers, only: [:index]

  post 'rentals/check-out', to: 'rentals#create', as: 'checkout'
  post 'rentals/check-in', to: 'rentals#update', as: 'checkin'

end
