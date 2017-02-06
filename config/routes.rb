Rails.application.routes.draw do

  resources :seeds

  root 'welcome#index'
end
