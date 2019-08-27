Rails.application.routes.draw do
  root to: "talents/top#index"

  resources :talents
  get 'top', action: :index, controller: 'talents/top'

end
