Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  match '*path' => "raffler#index", :via => [:get, :post]
end
