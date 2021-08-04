Rails.application.routes.draw do

  devise_for :users
  resources :users,only:[:show,:index,:edit,:update,:destroy]
  resources :movies,only:[:show,:new,:create,:destroy,:index]
  root to: 'home#top'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
