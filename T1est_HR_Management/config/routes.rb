Rails.application.routes.draw do
  
  resources :employee
  root 'employee#index'
  post 'employee/new' => "employee#create"
  

  patch "/employee/:id/edit" => "employee#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
