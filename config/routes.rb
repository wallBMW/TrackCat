Rails.application.routes.draw do
  get '/itemtypes' => 'item_types#index', as: 'item_types'
  post '/itemtypes/create' => 'item_types#create', as: 'create_item_type'
  
  get '/areas' => 'area#index'
end
