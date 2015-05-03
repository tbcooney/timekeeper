Rails.application.routes.draw do

  resources :projects do
  	get 'join' => 'projects#join'
    resources :notes, :documents
  end

  resources :notes, :documents
  devise_for :users
  get 'welcome/index'

  authenticated :user do
      root 'projects#index', as: "authenticated_root"
  end

  root 'welcome#index'
  resources :memberships


end
