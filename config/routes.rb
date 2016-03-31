Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :words

  authenticated :user do
	root "words#index", as: "authenticated_root"
  end

  root "welcome#index"
end

