Rails.application.routes.draw do
  resources :seeds do
    resources :picks
  end

  root 'welcome#index'
end
