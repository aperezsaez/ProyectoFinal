Rails.application.routes.draw do
  resources :pages
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }

  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
