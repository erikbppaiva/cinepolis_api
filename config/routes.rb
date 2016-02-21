Rails.application.routes.draw do
  root 'application#index'

  namespace :sessions do
    post '/signin',  action: :signin
    get  '/signout', action: :signout
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
    end
  end
end