Rails.application.routes.draw do
  devise_for :users
  #devise_for :installs
  get 'welcome/index'

  resources :docs
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
