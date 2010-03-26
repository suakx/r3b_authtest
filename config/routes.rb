R3bAuthtest::Application.routes.draw do |map|
  resource :account, :controller => "users"
  resources :reset_password
  resources :users
  resource :user_session
  
  match "/register" => "users#new", :as => 'register'
  match "/login" => "user_sessions#new", :as => 'login'
  match "/logout" => "user_sessions#destroy", :as => 'logout'
  match "/preferences" => "users#show", :as => 'preferences'
  match "/forgot_password" => "reset_passwords#new", :as => 'forgot_password'
  
  root :to => "users#new"
  match ':controller(/:action(/:id(.:format)))'
end
