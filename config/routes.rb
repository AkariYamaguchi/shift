Rails.application.routes.draw do
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#top'
  resources :shift_users
  resources :events
  #registrations_controller.rbを使える設定
  devise_for :users, controllers: { registrations: 'users/registrations' }

    get "users" => "user#index"
    get "users/show" => "user#show"
    get "users/:id/edit" => "user#edit"
    post "users/:id/update" =>"user#edit"

end
