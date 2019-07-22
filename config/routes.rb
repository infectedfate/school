Rails.application.routes.draw do

  get 'sessions/new'
  resources :teachers do
    resources :students do
      resources :perfomances
    end
  end

  resources :groups
  resources :subjects

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
