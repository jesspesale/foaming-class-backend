Rails.application.routes.draw do
  resources :reactors, only: [:index, :show, :create, :update]
end
