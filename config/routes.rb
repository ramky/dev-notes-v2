Rails.application.routes.draw do
  root to: 'topics#index'
  post 'authenticate', to: 'authentication#authenticate'

  resources :topics do
    resources :notes
  end
end
