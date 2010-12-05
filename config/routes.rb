Boilerplate::Application.routes.draw do |map|
  resources :services

  
  get "/contact/" => "contact#index"
  get "/about/" => "about#index"
  
  match "fenders/bow" => "fenders#list_by_type", :defaults => { :fender_type => 'bow'}
  match "fenders/side" => "fenders#list_by_type", :defaults => { :fender_type => 'side'}
  match "fenders/stern" => "fenders#list_by_type", :defaults => { :fender_type => 'stern'}
  match "fenders/notch" => "fenders#list_by_type", :defaults => { :fender_type => 'notch'}
  match "fenders/pier" => "fenders#list_by_type", :defaults => { :fender_type => 'pier'}
  match "fenders/mounting-clips" => "fenders#list_by_type", :defaults => { :fender_type => 'mounting-clips'}
  match "fenders/softloop-bow" => "fenders#list_by_type", :defaults => { :fender_type => 'softloop-bow'}
  match "fenders/softloop-side" => "fenders#list_by_type", :defaults => { :fender_type => 'softloop-side'}
  match "fenders/softloop-stern" => "fenders#list_by_type", :defaults => { :fender_type => 'softloop-stern'}
  match "fenders/softlite" => "fenders#list_by_type", :defaults => { :fender_type => 'softlite'}
  match "fenders/extruded" => "fenders#list_by_type", :defaults => { :fender_type => 'extruded'}
  match "fenders/yacht" => "fenders#list_by_type", :defaults => { :fender_type => 'yacht'}
  match "fenders/push-knee" => "fenders#list_by_type", :defaults => { :fender_type => 'pushknee'}
  
  resources :fenders
  
  resources :assets
  
  #get "home/index"
  root :to => "home#index"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get :recent, :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
