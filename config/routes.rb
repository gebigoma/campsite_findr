Rails.application.routes.draw do
root 'sites#index'
resources :users
resources :sites do
# get "sites/showindex" => "sites#showindex", as: :sites_index
  # nest review action create in site route for review functionalilty
  resources :reviews, only: [:create]
end


resources :reviews, except: [:create]

resources :sessions, only: [:new, :create]
delete '/logout' => 'sessions#destroy', as: :logout
end
