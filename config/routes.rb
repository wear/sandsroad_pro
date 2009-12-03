ActionController::Routing::Routes.draw do |map|
  map.resources :bills

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'   
  map.dashboard '/dashboard', :controller => 'dashboard', :action => 'index'
 # map.register '/register', :controller => 'users', :action => 'create'
 # map.signup '/signup', :controller => 'users', :action => 'new'
 # map.resources :users

  map.resource :session

  map.namespace :dashboard do |dash|
    dash.resources :bills
  end  

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "landing"


  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
ActionController::Routing::Translator.i18n('cn','en')