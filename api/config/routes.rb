Rails.application.routes.draw do
  resources :seals, only: [:index, :create, :update, :destroy]

  get '/seals/:name_of_the_seal', to: 'seals#show'
  post '/turn', to: 'turns#action'
end
