Rails.application.routes.draw do
  resources :purchase_orders
  devise_for :admins
  devise_for :clientes
  root 'welcome#index'
end
