Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users, controllers: {sessions: 'sessions'}
  get '/principal/index' => "principal#index"
  get '/teachers/index' => "teachers#index"
  get '/student/index' => "student#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
