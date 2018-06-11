Rails.application.routes.draw do
root 'users#index'
resources :users

resources :sessions, only: [:new, :create]
delete '/logout' => 'sessiona#destroy', as: :logout
end
