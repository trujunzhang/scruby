Scruby::Application.routes.draw do


  resources :harajs_caches


  resources :harajs


  resources :etsies
  resources :aliexpresses
  resources :realtors
  resources :types
  resources :cats
  resources :tasks
  resources :crawlers

  resources :dealsdirects
  resources :dealsdirectnavbars
  resources :dealsdirectcategories
  resources :vpns
  resources :socialmedia

  authenticated :user do
    # root :to => 'itunes#index'
    # root :to => 'googleplays#index'
  end
  # root :to => "itunes#index"
  # root :to => 'googleplays#index'

  # root :to => 'socialmedia#new'

  root :to => 'home#index'

  devise_for :users
  resources :users

  resources :itunes
  resources :googleplays

  resources :jobs
  resources :proposals

  resources :application do
    collection do
      get 'user_email'
      get 'crawled_count'
      post 'export_to_excel'
      post 'export_to_cvs'
      get 'run_task'
    end
  end

end