Rails.application.routes.draw do
  resources :language_skills
  resources :skills do
    resources :books
    resources :hacker_ranks
    resources :free_code_camps
    resources :linkedins
  end
  
  resources :tags
  resources :projects
  resources :social_icons
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  devise_for :users
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
