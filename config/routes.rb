Rails.application.routes.draw do
  resources :users
  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' =>  'user_sessions#destroy', :as => :logout

  resources :seeds do
    resources :picks
  end

  root 'users#index'
end
