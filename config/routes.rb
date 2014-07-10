Rails.application.routes.draw do
  root to: 'application#index'

  resources :users
  resources :leads, only: :index

end
