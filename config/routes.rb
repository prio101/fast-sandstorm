Rails.application.routes.draw do
  devise_for :users
  root to: "problems#index"

  resources :users, except: [ :destroy, :index, :new, :create ]
  resources :problems
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
