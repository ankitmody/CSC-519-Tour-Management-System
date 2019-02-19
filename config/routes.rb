Rails.application.routes.draw do
  resources :bookings
  resources :searches
  resources :bookmarks
  resources :tours
  resources :customers
  resources :agents
  resources :admins

  get 'bookmarks/potential_buyers/:tour_id', to: 'bookmarks#potential_buyers'
  get 'bookmarks/add/:customer_id/:tour_id', to: 'bookmarks#add'
  get '/bookings/new/:tour_id', to: 'bookings#new'
  get '/bookings/:booking_id/:tour_id', to: 'bookings#destroy'

  root 'static_page#home'
  get '/home', to: 'static_pages#home'
  get    '/signup',  to: 'sessions#redirect'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'searches/index'
  get 'search/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
