Rails.application.routes.draw do
  resources 'secciones' , controller: :sections, as: :sections do
    resources 'modulos', controller: :unities, as: :unities do
      resources :comments, only: [:create, :update, :destroy]
      resources 'topicos', controller: :topics, as: :topics
    end
  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }, path: '', path_names: {
    sign_up: 'registro',
    sign_in: 'login',
    sign_out: 'salir',
    edit: 'editar-perfil'
  }

  resources '', controller: :welcome, except: [:index, :create, :new, :edit, :show, :update, :destroy]
  get 'welcome/about', path: 'acerca-de', as: 'about'
  get 'welcome/contact', path: 'contacto', as: 'contact'

  # resources '', controller: :users, only: [:show]
  get 'users/show', path: '/:id', as: :user

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#land'

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
