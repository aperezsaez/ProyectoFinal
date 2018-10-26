# frozen_string_literal: true

Rails.application.routes.draw do


  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)
   resources :users do
     resources :appointments
   end

  root to: 'users#index'
  get 'proffesional/index'
  get 'about/about_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
