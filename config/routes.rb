R3bAuthtest::Application.routes.draw do |map|
  # map.resource :account, :controller => "users"
  resource :account, :controller => "users"
  # map.resources :password_resets
  resources :password_resets
  # map.resources :users
  resources :users
  # map.resource :user_session
  resource :user_session
  # map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  root :to => "user_sessions#new"
end
