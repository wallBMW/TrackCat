Rails.application.routes.draw do
  get '/itemtypes' => 'item_types#index', as: 'item_types'
end
