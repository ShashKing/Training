Rails.application.routes.draw do
  
  
  resources :employee
  # devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  devise_for :users, :controllers => {registrations:"registrations"}
  root 'employee#index'
  post 'employee/new' => "employee#create"
  devise_scope :user do
   get "/login" => "devise/sessions#new"

 end
  

  patch "/employee/:id/edit" => "employee#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
