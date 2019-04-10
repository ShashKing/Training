Rails.application.routes.draw do
  resource 'user'
  root 'user#index'
  get '/new' => "user#new"
  get '/address' => "user#address"
  get '/salpin' => "user#salpin"
  post '/salpin' => "user#create"
  post 'user/new' => "user#create"
  get '/show' => "user#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
