R3bAuthtest::Application.routes.draw do |map|
  # map.resource :user_session
  resource :user_session
  # map.resource :account, :controller => "users"
  resource :account, :controller => "users"
  # map.resources :users
  resources :users
  # map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  root :to => "user_sessions#new"
end
