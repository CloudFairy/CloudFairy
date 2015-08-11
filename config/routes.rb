Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :apps
    resources :app_setup
  end
  root to: "home#index"
end
