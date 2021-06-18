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
  devise_for :users, controllers: { sessions: "sessions" }
  root "home#index"
  if Rails.env.production?
    get '404', :to => 'application#page_not_found'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
