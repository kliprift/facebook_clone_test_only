Rails.application.routes.draw do
  root "welcome#index"

resources :sessions, only: [:new, :create]
resources :likes, only: [:create, :destroy]
resources :statuses, only: [:new, :create, :edit, :update, :destroy]
resources :users, only: [:new, :create, :edit, :update, :destroy]
delete '/signout', to:'sessions#destroy', as: 'signout'
end
