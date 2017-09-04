Rails.application.routes.draw do
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
resources :users
resources :sessions
    get 'show_inventory' => 'animals#show_inventory'
    get 'show_species' => 'animals#show_species'
    get 'show_breed' => 'animals#show_breed'
    get 'show_status' => 'animals#show_status'
    get 'filter' => 'animals#filter'
  resources :animals do
    get 'change_status_sale' => 'animals#change_status_sale'
    get 'change_status_sold' => 'animals#change_status_sold'
    get 'species' => 'animals#species'
    get 'total_amount_sale' => 'animals#total_amount_sale'
    end
end

