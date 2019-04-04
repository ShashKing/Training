Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
  post '/books/search' => 'books#search', as: 'search_books'
  get '/books/sorting' => 'books#sorting', as: 'sorting_books'
  get '/books/pagination' => 'books#pagination', as: 'paging_books'
  resources :books
end