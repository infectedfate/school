Rails.application.routes.draw do

  resources :teachers do
    resources :students do
      resources :perfomances
    end
  end

  resources :groups
  resources :subjects
end
