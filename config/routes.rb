Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               confirmations: "users/confirmations",
               passwords: "users/passwords",
               registrations: "users/registrations",
               sessions: "users/sessions",
               unlocks: "users/unlocks"
             },
             path: "user", # User user instead of users which makes a lot more sense
             path_names: {
               sign_in: "login" # Use user/login instead of sign_in
             }

  # This allows for /profile to work, makes a lot more sense compared to users/edit
  devise_scope :user do
    get "profile", to: "users/registrations#edit" # Take note that this is the path to the controller
  end

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
