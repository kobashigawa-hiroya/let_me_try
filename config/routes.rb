Rails.application.routes.draw do
  get "homes/inde"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "homes#index"
  root "users#index"
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
