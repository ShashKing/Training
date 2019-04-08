Rails.application.routes.draw do
  
  root 'students#index'
  post '/students/search' => 'students#search', as: 'search_students'
  get '/students/sorting' => 'students#sorting', as: 'sorting_students'
  get '/students/pagination' => 'students#pagination', as: 'paging_students'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
