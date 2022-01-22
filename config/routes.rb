Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions",
    unlocks: "users/unlocks" }

  root to: 'pages#home'

  resources :flats do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: [ :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end

  resources :favourites, only: [ :index, :new, :create, :destroy]
  resources :bookings, only: [ :destroy ]
  resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
