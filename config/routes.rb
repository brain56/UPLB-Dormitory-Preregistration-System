Uplbdps::Application.routes.draw do
  resources :destroyed_applicants

  get "applicants/login"

  get "applicants/private"

  resources :users

  resources :posts

  resources :applicants do
	# The priority is based upon order of creation:
	# first created -> highest priority.
	get 'sortByName', :on => :collection
	get 'sortByPoints', :on => :collection
	get 'viewACCIReservation', :on=> :collection
	get 'viewATIReservation', :on=> :collection
	get 'viewMarehaReservation', :on=> :collection
	get 'viewMensReservation', :on=> :collection
	get 'viewNewDormReservation', :on=> :collection
	get 'viewNewForehaReservation', :on=> :collection
	get 'sortACCIByName', :on=> :collection
	get 'sortATIByName', :on=> :collection
	get 'sortMarehaByName', :on=> :collection
	get 'sortMensByName', :on=> :collection
	get 'sortNewDormByName', :on=> :collection
	get 'sortNewForehaByName', :on=> :collection
	get 'sortACCIByPoints', :on=> :collection
	get 'sortATIByPoints', :on=> :collection
	get 'sortMarehaByPoints', :on=> :collection
	get 'sortMensByPoints', :on=> :collection
	get 'sortNewDormByPoints', :on=> :collection
	get 'sortNewForehaByPoints', :on=> :collection
	get 'generateReservations', :on=> :collection
	
	#resources:sort
	#resources :sample
  end

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
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
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
  #       get 'recent', :on => :collection
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
   root :to => "applicants#main"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
	
end