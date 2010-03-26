R3bAuthtest::Application.routes.draw do |map|
  # map.resource :account, :controller => "users"
  resource :account, :controller => "users"
  
  # map.resources :password_resets
  resources :reset_password
  
  # map.resources :users
  resources :users
  
  # map.resource :user_session
  resource :user_session
  
  match "/register" => "users#new", :as => 'register'
  match "/login" => "user_sessions#new", :as => 'login'
  match "/logout" => "user_sessions#destroy", :as => 'logout'
  match "/preferences" => "users#show", :as => 'preferences'
  match "/forgot_password" => "reset_passwords#new", :as => 'forgot_password'
  
  # map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  root :to => "users#new"
  match ':controller(/:action(/:id(.:format)))'
end
