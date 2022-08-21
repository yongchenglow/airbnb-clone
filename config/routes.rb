Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               confirmations: "users/confirmations",
               passwords: "users/passwords",
               registrations: "users/registrations",
               sessions: "users/sessions",
               unlocks: "users/unlocks"
             },
             path_names: {
               sign_in: "login" # Use user/login instead of sign_in
             }

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
