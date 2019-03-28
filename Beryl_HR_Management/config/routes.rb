Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :home
 	root "home#index"
  devise_for :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'home/new' => "home#create"
  patch "/home/:id/edit" => "home#update"
  get 'home/:id/show' => "home#show"
end
