Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  get '/items', to: 'items#index', as: 'items' #index.html.erb
  get '/items/new', to: 'items#new', as: 'new_item' #new.html.erb
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show', as: 'item' #show.html.erb
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item' #edit.html.erb
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

  get '/outfits', to: 'outfits#index', as: 'outfits' #index.html.erb
  get '/outfits/new', to: 'outfits#new', as: 'new_outfit' #new.html.erb
  post '/outfits', to: 'outfits#create'
  get '/outfits/:id', to: 'outfits#show', as: 'outfit' #show.html.erb
  get '/outfits/:id/edit', to: 'outfits#edit', as: 'edit_outfit' #edit.html.erb
  patch '/outfits/:id', to: 'outfits#update'
  delete '/outfits/:id', to: 'outfits#destroy'

end
