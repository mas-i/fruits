Rails.application.routes.draw do
  devise_for :users

  root "fruits#index"
  
  resources :fruits
end
