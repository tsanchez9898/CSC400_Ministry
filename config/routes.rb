Rails.application.routes.draw do
  resources :posts
 root 'pages#home'
  
  get 'pages/about'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 resources :payment_informations
 resources :emergency_contacts
 resources :camp_members
 resources :churches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
