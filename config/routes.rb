Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do 
    resource :session, only: [:create, :destroy, :show]
    resources :users, only: [:create, :show]
    resources :walks, only: [:create, :index, :show, :destroy]
    resources :lat_lngs, only: [:create]
  end 
end
