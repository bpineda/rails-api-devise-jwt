Rails.application.routes.draw do

  devise_for :users, defaults: { format: :json }
  get 'destinations', to: 'destinations#index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
