Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'products#index'
  resources :products

  get "/admin", to: "users#admin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
