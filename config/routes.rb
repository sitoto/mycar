Mycar::Application.routes.draw do
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
      get :qq
      get :bitauto
      get :download
      get :report
      get :sanlv
    end
  end

 authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
