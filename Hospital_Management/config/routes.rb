Rails.application.routes.draw do


  resources :patients do
    member do
      get :delete
    end
  end
  # get 'patients/index'
  # get 'patients/show'
  # get 'patients/new'
  # get 'patients/edit'
  # get 'patients/delete'
  # # get 'patients/index'
  # get 'patients/new'
  # get 'patients/show'
  # get 'patients/create'
  # get 'patients/edit'
  # get 'patients/delete'
  # get 'patients/destroy'
  # get 'subject/index'
  # get 'subject/show'
  # get 'subject/new'
  # get 'subject/edit'
  # get 'subject/delete'
  # get 'demo/index'
  # or
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to:'home#index'
  # or
  # resources :subject do
  # 	member do
  # 		get :delete
  # 	end
  # end
  root 'home#index'
  #get "demo/index" => "demo#index"
  # or 
  get ':controller(/:action(:/id))'
  get "/mobile" => "home#mobile"
  get "/career" => "home#career"

  get 'demo/index'
  get 'demo/hello'
  get 'demo/hello1'
  get 'demo/youtube'
end
