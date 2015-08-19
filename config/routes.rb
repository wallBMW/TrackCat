Rails.application.routes.draw do
  get '/itemtypes' => 'item_types#index', as: 'item_types'
  get '/itemtypes/:id' => 'item_types#show', as: 'show_item_type'
  put '/itemtypes/:id' => 'item_types#update', as: 'update_item_type'
  delete '/itemtypes/:id' => 'item_types#destroy', as: 'destroy_item_type'
  post '/itemtypes/create' => 'item_types#create', as: 'create_item_type'
  post '/itemtypes/createpropdef' => 'item_types#create_prop_def', as: 'create_prop_def'
  delete '/itemtypes/destroypropdef/:id' => 'item_types#destroy_prop_def', as: 'destroy_prop_def'

  get '/areas' => 'area#index'
end
