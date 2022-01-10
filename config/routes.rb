Rails.application.routes.draw do

devise_for :users
  resources :posts do
    resources :comments
  end
  delete "logout", to: "session#destroy"
  root "posts#index"
end
