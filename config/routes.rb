Rails.application.routes.draw do
  devise_for :users

  root "fruits#index"

  resources :fruits do
    collection do
      get 'search'
    end
  end
end
