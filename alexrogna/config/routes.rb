Rails.application.routes.draw do

  root 'home#index'
  resources :social_icons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
