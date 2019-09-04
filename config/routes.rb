Rails.application.routes.draw do
  root to: "talents/top#index"

  namespace :talents do
    resources :sessions, only: [:new, :create, :destroy]
  end
  resources :talents
  get 'top', action: :index, controller: 'talents/top'

  namespace :companies do
    resources :sessions, only: [:new, :create, :destroy]
  end
  resources :companies

end
