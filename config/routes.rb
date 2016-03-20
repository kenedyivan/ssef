Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'site/about'
  get 'site/beneficiaries'
  get 'site/donors'
  get 'site/contact'
  get 'site/donation'
  get 'site/send_mail', :to => 'site#send_mail'

  get 'site/blog_item'

  get 'articles/create'

  #blog
  get 'site/blog', :to => "blog#index"
=begin
  get 'site/blog/show/:id', :to => "blog#show"
=end

  # You can have the root of your site routed with "root"
  root 'site#index'

  get '/admin', :to => "admin#index"
  get 'admin/login', :to => "admin#login"
  get 'admin/logout', :to => "admin#logout"
  get 'admin/blog/articles/new', :to => "articles#new"
  get 'admin/blog/articles/index', :to => "articles#index"

  match ':controller(/:action(/:id))', :via => [:get, :post]

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
