Rails.application.routes.draw do
  get 'assoc/new'

  get 'assoc/create'

  root 'users#index'

  get '/items', to: 'items#index', as: 'items' #index.html.erb
  get '/items/new', to: 'items#new', as: 'new_item' #new.html.erb
  post '/items', to: 'items#create' #
  get '/items/:id', to: 'items#show', as: 'item' #show.html.erb
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item' #edit.html.erb
  patch '/items/:id', to: 'items#update' #
  delete '/items/:id', to: 'items#destroy' #

  get '/outfits', to: 'outfits#index', as: 'outfits' #index.html.erb
  get '/outfits/new', to: 'outfits#new', as: 'new_outfit' #new.html.erb
  post '/outfits', to: 'outfits#create' #
  get '/outfits/:id', to: 'outfits#show', as: 'outfit' #show.html.erb
  get '/outfits/:id/edit', to: 'outfits#edit', as: 'edit_outfit' #edit.html.erb
  patch '/outfits/:id', to: 'outfits#update' #
  delete '/outfits/:id', to: 'outfits#destroy' #

  # these nested routes are for associating existing items with outfits
  get '/outfits/:id/items/new', to: 'assoc#new', as: 'new_assoc'
  post '/outfits/:id/items', to: 'assoc#create'

  get '/users', to: 'users#index', as: 'users' #index.html.erb
  get '/users/new', to: 'users#new', as: 'new_user' #new.html.erb
  post '/users', to: 'users#create' #
  get '/users/:id', to: 'users#show', as: 'user' #show.html.erb
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user' #edit.html.erb
  patch '/users/:id', to: 'users#update' #
  delete '/users/:id', to: 'users#destroy' #

end
