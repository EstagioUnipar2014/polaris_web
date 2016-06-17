Rails.application.routes.draw do

  root :to => 'pages#index'
  match '/dashboard', to: 'dashboard#dashboard', via: [:get]
  match '/notificacoes', to: "notificacoes#index", via: [:get, :post]
  resources :dietas
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
  resources :propriedades
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
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #Modulo financeiro
  resources :contas
  resources :movimentacoes
end
