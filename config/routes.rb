Rails.application.routes.draw do

  get 'recordings/index'
  get 'recordings/show'
  get 'recordings/new'
  get 'recordings/edit'
  get 'conversations/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :composers
  resources :pieces
  resources :schools
  resources :subjects
  resources :levels
  resources :users
  resources :follows, only: [:index, :create, :destroy]
  resources :repertoires, only: [:index, :create, :destroy]
  resources :workloads, only: [:index, :create]
  resources :comment_pieces, only: [:create]
  resources :videos

  resources :conversations, only: [:index, :create] do
  resources :messages, only: [:index, :create]
  end

end
