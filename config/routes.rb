Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  root 'cryptos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
