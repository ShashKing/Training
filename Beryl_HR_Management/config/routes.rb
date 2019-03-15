Rails.application.routes.draw do
	resources :home
 	root "home#index"
  devise_for :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'home/new' => "home#create"
  patch "/employee/:id/edit" => "employee#update"
end
