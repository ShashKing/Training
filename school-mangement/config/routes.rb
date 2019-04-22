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

  get "/:id/index" => "subjects#index"
  get "/:id/:id/new" => "subjects#new"
  post "/:id/:id/new" => "subjects#create"

  get "/:id/:id/show" => "subjects#show"
  get "/:id/subject/edit" => "subjects#edit"
  patch "/:id/subject/edit" => "subjects#update"
  #get "subject/edit" => "subjects#edit"
  delete "/:id/subjects/:id/subject/show" => "subjects#destroy"

  get "/show" => "subjects#show"
  get "/:id/show" => "subjects#show"
  delete "/:id/index" => "teachers#destroy"

  get "/addresses/new/:id" => "addresses#new"
  post "/addresses/new/:id" => "addresses#create"
  get "/addresses/show/:id" => "addresses#show"
  delete "/:id/principal/index" => "principal#destroy"

  devise_scope :user do
    post '/principal/create_user' => "registrations#create"
     post '/teachers/create_user' => "registrations#create"

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
