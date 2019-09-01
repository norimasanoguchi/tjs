Rails.application.routes.draw do
  get 'talent_sessions/new'
  get 'talent_sessions/create'
  get 'talent_sessions/destroy'
  root to: "talents/top#index"

  resources :talents
  get 'top', action: :index, controller: 'talents/top'

end
