Rails.application.routes.draw do
  resources :searches
  resources :bookmarks
  resources :tours
  resources :customers
  resources :agents
  resources :admins

  root 'static_page#home'
  get '/home', to: 'static_pages#home'
  get    '/signup',  to: 'sessions#redirect'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
