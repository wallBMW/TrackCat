Rails.application.routes.draw do
  get '/itemtypes' => 'item_types#index', as: 'item_types'
  get '/itemtypes/:id' => 'item_types#show', as: 'show_item_type'
  delete '/itemtypes/:id' => 'item_types#destroy', as: 'destroy_item_type'
  post '/itemtypes/create' => 'item_types#create', as: 'create_item_type'

  get '/areas' => 'area#index'
end
