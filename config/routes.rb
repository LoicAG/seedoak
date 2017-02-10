Rails.application.routes.draw do
  resources :users
  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' =>  'user_sessions#destroy', :as => :logout

  resources :seeds do
    resources :picks
  end

  root 'welcome#index'
  get 'partners' => 'welcome#partners'
  get 'faq' => 'welcome#faq'
  get 'about' => 'welcome#about'
end
