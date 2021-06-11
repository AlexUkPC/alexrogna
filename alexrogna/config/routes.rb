Rails.application.routes.draw do
  resources :contact_forms
  resources :educations
  resources :teches
  resources :works
  resources :language_skills
  resources :skills do
    resources :books
    resources :hacker_ranks
    resources :free_code_camps
    resources :linkedins
  end
  resources :books
  resources :hacker_ranks
  resources :free_code_camps
  resources :linkedins
  resources :tags
  resources :projects
  resources :social_icons
  namespace :settings do
    resource :user, only: [:show, :update] do
      member do
        post :notify_friend
      end
    end
  end
  devise_for :users
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
