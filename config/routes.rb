Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'
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

end
