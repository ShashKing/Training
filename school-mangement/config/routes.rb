Rails.application.routes.draw do
  
  resources 'subjects'

  root 'home#index'
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
  get '/principal/index' => "principal#index"
  get '/teachers/index' => "teachers#index"
  get '/student/index' => "student#index"
  get 'principal/new' => "principal#new"
  get 'teachers/new' => "teachers#new"
  get '/:id' => "principal#user"
  get '/home/index' => "home#index"
  get "/:id/subjects/index" => "subjects#index"
  get "/:id/subjects/:id/subject/new" => "subjects#new"
  post "/:id/subjects/:id/subject/new" => "subjects#create"
  devise_scope :user do
    post '/principal/create_user' => "registrations#create"
     post '/teachers/create_user' => "registrations#create"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
