Rails.application.routes.draw do
  get 'sites/index'
  get 'sites/show'
  get 'sites/new'
  get 'sites/create'
  get 'sites/edit'
  get 'sites/update'
  get 'sites/destroy'
root 'users#index'
resources :users

resources :sessions, only: [:new, :create]
delete '/logout' => 'sessions#destroy', as: :logout
end
