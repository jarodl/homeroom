ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home'
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'

  map.resources :sessions
  map.resources :users
  map.resources :courses

  map.namespace :admin do |admin|
    admin.resources :users
    admin.resources :courses
    admin.root :controller => 'admin'
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
