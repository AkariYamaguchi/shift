Rails.application.routes.draw do

  resources :shift_users
  resources :events
  devise_for :users
  root 'home#top'

end
