Rails.application.routes.draw do
  resources :users
  resources :charges

  get '/payments/:mobile/:amount' => "charges#new"

end
