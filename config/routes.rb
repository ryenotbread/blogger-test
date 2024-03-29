Blogger::Application.routes.draw do

  resources :authors
  
  resources :author_sessions
  
  match 'login' => 'author_sessions#new', :as => :login
  match 'logout' => 'author_sessions#destroy', :as => :logout

  root :to => 'articles#index'

  get "tags/index"

  get "tags/show"

  resources :comments
  resources :articles
  resources :tags
end
