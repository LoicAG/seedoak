Rails.application.routes.draw do
  resources :users
  resources :seeds do
    resources :picks
  end

  root 'welcome#index'
end
