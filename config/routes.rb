Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]
  get '/', to: 'spices#index'
end
