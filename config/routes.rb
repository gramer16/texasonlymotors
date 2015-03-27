Rails.application.routes.draw do
 

  

  
  
  resources :plans 
       
  resources :subscriptions
   

  resources :interiordesigners

  resources :countertops

  resources :customcabinets

  resources :cashbuyers

  resources :movingcompanies

  resources :poolrepairs

  resources :poolcleaners

  resources :solarscreens

  resources :windows

  resources :termiteinspectors

  resources :taxspecialists

  resources :titlecompanies

  resources :septics

  resources :securities

  resources :stagings

  resources :rentalproperties

  resources :accountants

  resources :lawyers

  resources :real_estatefirms

  resources :realtors

  resources :roofings

  resources :privatebanks

  resources :privatefirms

  resources :propertymanagementfirms

  resources :paintings

  resources :plumbings

  resources :molds

  resources :mortgages

  resources :landsurveyors

  resources :landscapings

  resources :insulations

  resources :hardmoneys

  resources :homeinspectors

  resources :generalcontractors

  resources :floorings

  resources :framings

  resources :drywalls

  resources :orders
  
  devise_for :users
  resources :subscriptionpackages do
    resources :orders
  end
  
  resources :asphalts do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :airconditioners do
    collection do
      get 'search'
      get :autocomplete
    end
  end
      
  resources :arquitects do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :service_types

  resources :services

 
  resources :commercialpropertiesforsales

  resources :residentials do
    collection do
      get 'search'
      get 'bedrooms'
      get :autocomplete
    end
  end

  get 'pages/home'
  get 'pages/car'
  get 'pages/dealer'
  get 'pages/useddealer'
  get 'pages/semitrailer'
  get 'pages/semitruck'
  get 'pages/truckdealer'
  get 'pages/usedsemitruckdealer'
  get 'pages/semitruckservices'
  get 'pages/semitrailerservices'
  get 'pages/semitrailerdealer'
  get 'pages/usedsemitrailerdealer'
  get 'pages/membership'
  get 'pages/termsofuse'
  get 'pages/privacypolicy'
  get 'pages/heavyequipment'
  get 'pages/heavyequipmentservices'
  get 'pages/heavydealer'
  get 'pages/usedheavydealer'
  get 'pages/farm'
  get 'pages/farmdealer'
  get 'pages/farmequipmentservices'
  get 'pages/usedfarmdealer'
  get 'pages/contactus'
  get 'pages/carservices'
  get 'seller' => "subscriptionpackages#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"



  root 'pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
