Rails.application.routes.draw do
  resources :maintenance_shop_lists do
   resources :maintenance_shop_lists
  end
  root "maintenance_shop_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
