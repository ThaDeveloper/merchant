Rails.application.routes.draw do
  resources :addresses
  resources :orders do
  member do
    get :confirm
  end
 end
 resources :order_items
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
  match "/login" => redirect("/auth/twitter"), as: :login, via: :get
  match "/logout" => "sessions#destroy", as: :logout, via: :get

end
