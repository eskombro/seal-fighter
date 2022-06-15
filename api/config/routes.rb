Rails.application.routes.draw do
  resources :seals

  post '/turn', to: 'turns#action'
end
