require 'sidekiq/web'

AuthTest::Application.routes.draw do
  resources :snippets
  root to: "snippets#new"
  mount Sidekiq::Web, at: "/sidekiq"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'users#index'
end
