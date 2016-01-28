Rails.application.routes.draw do
  resources :users
  resources :charges

  get '/payments/9977338489/2000' => "charges#new"

end
