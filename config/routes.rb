Rails.application.routes.draw do
  root 'posts#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :post_attachments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
