Rails.application.routes.draw do
  
  root 'users#new'
  resources 'users'
  post '/users' => "user#create"
  #get '/users' => "user#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
