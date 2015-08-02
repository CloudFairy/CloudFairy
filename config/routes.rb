Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :apps
  end
  root to: "home#index"
end
