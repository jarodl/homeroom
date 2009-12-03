ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home'
  map.signup 'signup', :controller => 'students', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'

  map.resources :sessions
  map.resources :users
  map.resources :students
  map.resources :courses, :has_many => :assignments
  map.resources :quicklinks
  map.resources :materials

  map.namespace :admin do |admin|
    admin.resources :users
    admin.resources :courses
    admin.root :controller => 'admin'
    admin.resources :students
    admin.resources :professors
    admin.resources :assignments
    admin.resources :materials
    admin.resources :grades
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
