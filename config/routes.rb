Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :photo_uploads
  devise_for :users

  root "photo_uploads#index"
end
