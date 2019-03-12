Rails.application.routes.draw do
  
  
  resources :employee
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root 'employee#index'
  post 'employee/new' => "employee#create"
  

  patch "/employee/:id/edit" => "employee#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
