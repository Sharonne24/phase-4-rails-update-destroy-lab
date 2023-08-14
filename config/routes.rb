Rails.application.routes.draw do
  resources :plants, only: [:index, :show, :create, :update, :destroy]
  patch '/plants/:id', to: 'plants#update', defaults: { format: 'json' }
  delete '/plants/:id', to: 'plants#destroy', defaults: { format: 'json' }

end
