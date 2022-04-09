Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get '/home/about' => 'homes#about', as: 'about'


  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]


end
