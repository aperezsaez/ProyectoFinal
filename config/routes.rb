# frozen_string_literal: true

Rails.application.routes.draw do

<<<<<<< HEAD
=======

>>>>>>> master
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations',
     :omniauth_callbacks => "users/omniauth_callbacks"
   }
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)
   resources :users do
     resources :appointments
   end

<<<<<<< HEAD
  root to: "users#index"
  get 'geocontroller/findaddress'
=======
  root to: 'users#index'
  get 'professional/index'
  get 'about/about_us'
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
