Rails.application.routes.draw do
  resources :locations, :inventories, :items
  resources :users do
    resources :locations
  end
end
