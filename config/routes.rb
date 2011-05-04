SampleApp::Application.routes.draw do
  
  get "sessions/new"

  get "users/new"

  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/help"
  
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  #scope :constraints => { :protocol => "https" } do 
      match '/signup',  :to => 'users#new'
      match '/signin',  :to => 'sessions#new'
  #end
  
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  root              :to => 'pages#home'

end
