Rails.application.routes.draw do
  
  get 'teacher/index'
  get 'teacher/new'
  get 'teacher/edit'
  get 'teacher/show'
  resources :student
  
  resources :books
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'admin' => 'admin#index'
  controller :sessions do
  	get 'login' => :new
  	get 'login' => :create
  	delete 'logout' => :destroy
  end
  resources :users
 	root 'home#index'
 	resources :home 
 	post '/home/new' => "home#create"	
 	post '/edit' => "home#update"
 	post "/home/:id/edit" => "home#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'student/new' => "student#create"
  resources :teacher
  
  post "/student/:id/edit" => "student#update"
end
