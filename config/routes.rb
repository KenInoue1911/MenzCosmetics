Rails.application.routes.draw do
  get 'users/show'
  get 'home/top'
  get 'home/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
　end

 resources :users, only: [:show]
end
