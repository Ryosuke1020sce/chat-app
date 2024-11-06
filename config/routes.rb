Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' # え？これ要らないんだ…
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
