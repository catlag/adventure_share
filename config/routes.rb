Rails.application.routes.draw do
  root to: 'access#index', as: 'index'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home", as: 'home'

  get 'logout', to: "access#logout"

  match '*path' => "access#index", :via => [:get, :post]
end
