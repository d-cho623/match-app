Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  
  root to: 'top#index'

  resources :users, only: [:index, :show]
end
