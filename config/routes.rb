Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
  end

  resources :chatrooms

  root "static_pages#root"
  # root "chatrooms#show"

  mount ActionCable.server, at: '/cable'
end
