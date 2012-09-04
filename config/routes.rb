Mycar::Application.routes.draw do
  resources :qqcars do
    collection do
      get :download
    end
  end

  resources :brands

  resources :sites

  resources :pages do
    collection  do
      get :sanlv
    end
  end 

  resources :cars do
    collection do 
      put :get_qq_list
      get :site
      get :brand
      get :bitauto
      get :download
      get :report
      get :sanlv
      get :model
    end
  end

 authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
