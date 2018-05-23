Rails.application.routes.draw do
  resources :colors
  resources :transmisions
  resources :fuels
  resources :engines
  resources :models
  resources :products

  controller :products do
    get 'search' => "products#search"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
