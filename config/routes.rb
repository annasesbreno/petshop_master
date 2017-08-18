Rails.application.routes.draw do
  get 'inventory/inventory'
  get 'sessions/new'
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
    get 'species' => 'animals#species'
    get 'total_amount_sale' => 'animals#total_amount_sale'
    end
end

