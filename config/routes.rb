Rails.application.routes.draw do

  root to: 'access#index', as: 'index'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home", as: 'home'

  get 'logout', to: "access#logout"

  # Trip routes 

  get 'trip', to: "trip#index", as: 'trip'

  get 'trip/:id/edit', to: "trip#edit", as: 'trip_edit'

  get 'trip/new', to: "trip#new"

  get 'trip/show/:id', to: "trip#show", as: 'trip_show'

  post 'trip/create', to: "trip#create"

  patch 'trip/:id/edit', to: "trip#update"

  delete 'trip/destroy', to: "trip#destroy"

  

end
