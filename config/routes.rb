Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :destroy]

  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
