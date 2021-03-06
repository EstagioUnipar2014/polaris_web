Rails.application.routes.draw do

  match '/render_form', to: "application#render_form", via: [:post]

  match '/notificacoes', to: "notificacoes#index", via: [:get, :post]

  match '/feed_noticias', to: "pages#feed_noticias", via: [:get, :post]

  resources :dietas

  root :to => 'pages#index'

  match "/sobre", to: "pages#sobre", via: [:get]

  match "/contato", to: "pages#contato", via: [:get]
  
  devise_for :usuarios
  
  #resources :proprietarios

  resources :exames

  resources :tipo_exames

  resources :doencas

  resources :vacinas

  resources :tipo_vacinas

  resources :medicamentos

  resources :tipo_medicamentos

  #resources :coberturas

  resources :cios

  resources :ciclos

  resources :alimentos

  #resources :propriedades

  resources :ordenhas

  resources :imagens

  resources :pesagens

  resources :racas

  resources :classificacoes

  resources :animais

  match 'animal/:animal_id/doencas', to: 'animais#animal_doencas', via: [:get, :post]  

  match 'animal/:animal_id/pesagens', to: 'pesagens#index', via: [:get, :post]

  match 'animal/:animal_id/vacinas', to: 'vacinas#index', via: [:get, :post]

  match 'animal/:animal_id/exames', to: 'exames#index', via: [:get, :post]

  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'
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
