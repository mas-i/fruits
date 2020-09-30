Rails.application.routes.draw do
  get 'fruits/index'
  devise_for :users

  root "fruits#index"

end
