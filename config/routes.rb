Rails.application.routes.draw do
  

  root 'welcome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  resources :bestaccreditedstudentbranches , only: [:new, :create]
  
  resources :bestcsiinternationalstudentseventhosts , only: [:new, :create]
  get '/bestcsiinternationalstudentseventhosts/getname/:name' => 'bestcsiinternationalstudentseventhosts#getname' , 
  :constraints => { :name => /[^\/]+/ }
  
  resources :highestsponsorshipofcsievents , only: [:new, :create]
  get '/highestsponsorshipofcsievents/getname/:name' => 'highestsponsorshipofcsievents#getname'
  
  resources :longestcontinuoussbcs , only: [:new, :create]
  get '/longestcontinuoussbcs/getname/:name' => 'longestcontinuoussbcs#getname'
  
  resources :facmaxpublishings , only: [:new, :create]
  get '/facmaxpublishings/getname/:name' => 'facmaxpublishings#getname'
  
  
  
  resources :paperpresenters , only: [:new, :create]
  
  resources :studentmaxpublishings , only: [:new, :create]
  
  resources :studentbranchactivists , only: [:new, :create]
  
  resources :bestthesisawards , only: [:new, :create]
  
  resources :regionalchapterawards , only: [:new, :create]
  
  resources :individualserviceawards , only: [:new, :create]
  
  resources :institutes , param: :imno do
    get :autocomplete_institute_name, :on => :collection
  end
  
  resources :sbcs , param: :imno
  
  resources :nominated_members , param: :imno
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
