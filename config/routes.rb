Rails.application.routes.draw do
  devise_for :clientes
  root 'welcome#index'

end
