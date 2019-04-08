Rails.application.routes.draw do
  
  post '/books/search' => 'books#search', as: 'search_books'
  get '/books/sorting' => 'books#sorting', as: 'sorting_books'
  get '/books/pagination' => 'books#pagination', as: 'paging_books'
  resources :books
  root 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/index' => 'user#index', :via => :post
end
