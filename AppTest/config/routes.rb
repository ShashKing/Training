Rails.application.routes.draw do

  root 'employee#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
