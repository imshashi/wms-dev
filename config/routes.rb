Rails.application.routes.draw do
  resources :users
  resources :charges

  get '/payments/9900990090/8000' => "charges#new"

end
