Rails.application.routes.draw do
  devise_for :admins
  devise_for :clientes
  root 'welcome#index'
end
