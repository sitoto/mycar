Mycar::Application.routes.draw do
  match "cars/download" => "cars#download"
  match "cars/report" => "cars#report"
 
  resources :cars
 authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
