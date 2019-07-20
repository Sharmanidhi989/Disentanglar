Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'welcome#index'
  get 'welcome/index'
  resources :media_contents, only: [:new, :create]
end
