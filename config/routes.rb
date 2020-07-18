Rails.application.routes.draw do

  get 'post_likes/create'
  get 'post_likes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :students
  devise_for :teachers

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
  resources :workloads, only: [:index, :create, :destroy]
  resources :comment_pieces, only: [:create]
  resources :videos
  resources :posts
  resources :post_likes, only: [:create, :destroy]
  resources :conversations, only: [:index, :create] do
  resources :messages, only: [:index, :create]
  end

end
