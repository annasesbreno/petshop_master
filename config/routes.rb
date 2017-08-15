Rails.application.routes.draw do
  get 'inventory/inventory'
  get 'sessions/new'
  #root 'static_pages#home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :animals do
    get 'change_status_sale' => 'animals#change_status_sale'
    get 'change_status_sold' => 'animals#change_status_sold'
    get 'show_inventory' => 'animals#show_inventory'
    get 'species_dog' => 'animals#species_dog'
    get 'species_cat' => 'animals#species_cat'
    end
end

