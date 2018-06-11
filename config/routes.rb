Rails.application.routes.draw do
  get 'new/create'
  get 'new/destroy'
root 'users#index'
resources :users
end
