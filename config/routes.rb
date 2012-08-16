Mycar::Application.routes.draw do
  resources :sites

  resources :pages do
    collection  do
      get :sanlv
    end
  end 

  resources :cars do
    collection do 
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
