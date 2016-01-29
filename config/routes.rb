Rails.application.routes.draw do
  resources :users
  resources :charges

  get '/payments/:mobile/:amount' => "charges#new"

  get 'about' => "home#about"
  get 'faq' => "home#faq"
  get 'legal' => "home#legal"
  get 'thankyou' => "home#thankyou"


  root to: 'home#index'
end
