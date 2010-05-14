ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  
  map.namespace :admin do |admin|
    admin.resources :sections,        :has_many => :categories
    admin.resources :categories,      :has_many => :products
    admin.resources :products,        :has_many => :product_images
    admin.resources :events,          :has_many => :event_galleries
    admin.resources :event_galleries, :has_many => :event_gallery_images
    admin.resources :sessions
    admin.resources :dynamic_pages,   :has_many => :headers
    admin.resources :highlights
    admin.resources :notices,         :has_many => :notice_images
    admin.resources :users
    admin.resources :headers
    admin.resources :contacts
    admin.resources :newsletters,     :collection => {:export => :get}
    admin.resources :cases,           :has_many => :case_images
    admin.resources :schedule_visits
    admin.resources :home, :singular => :home_item
  end
  
  map.admin "/admin", :controller => "admin/home"
  
  map.root :admin
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
