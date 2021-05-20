Rails.application.routes.draw do
  namespace :settings do
    get 'users/show'
    get 'users/update'
  end
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  devise_for :users
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
