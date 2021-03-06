Rails.application.routes.draw do
  get "records/index"
  get "records/create"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "homes#index"
  resources :members
  resources :records
  resources :counters
  resources :duties
  get "/api/books", to: "api/books#index"

  # Book一覧表示用のパス
  get "/books", to: "books#index"
end
