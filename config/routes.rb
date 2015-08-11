Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :apps
    resources :app_setup
    root to: "apps#index", as: :authenticated_root
  end
  authenticate :user do
    root to: "home#index", as: :unauthenticated_root
  end
end
