Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :create, :update]
  resources :hero_powers, only: [:create]
  patch '/powers/:id', to: 'powers#update'
end
