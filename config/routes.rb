Rails.application.routes.draw do

  resources :shift_users
  resources :events
  devise_for :users
  root 'home#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
