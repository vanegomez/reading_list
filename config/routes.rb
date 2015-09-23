Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    resources :links, only: [:index, :show]
  end

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
