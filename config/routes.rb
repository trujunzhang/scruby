Scruby::Application.routes.draw do



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

  resources :application do
    collection do
      get 'user_email'
      get 'crawled_count'
      post 'export_to_excel'
    end
  end

end