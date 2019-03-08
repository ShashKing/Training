Rails.application.routes.draw do
  
  resources :employee

  post 'employee/new' => "employee#create"
  root 'employee#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
