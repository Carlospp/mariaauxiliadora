Rails.application.routes.draw do

  resources :employees
  devise_for :views
  devise_for :users
  get 'servicios/estetica'=> 'services#aesthetic', as: :estetica

  get 'servicios/endodoncia'=> 'services#endodontic', as: :endodoncia

  get 'servicios/implantes'=> 'services#implant', as: :implantes

  get 'servicios/ortodoncia'=> 'services#orthodontic', as: :ortodoncia

  get 'servicios/periododoncia'=> 'services#periodontic', as: :periododoncia

  get 'servicios/rehabilitacion'=> 'services#rehabilitation', as: :rehabilitacion

  get 'servicios/cirugia'=> 'services#surgery', as: :cirugia

  root 'pages#index'

  get 'contactenos' => 'pages#contact', as: :contactenos
  get 'nosotros' => 'pages#about', as: :nosotros
  get 'servicios' => 'pages#services', as: :servicios


  resources :positions
  resources :treatments
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
