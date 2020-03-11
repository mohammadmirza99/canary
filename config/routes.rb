Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities, only: [] do
    resources :reviews, only: [:new, :create, :index]
  end

  resources :selections, only: [:index, :create, :update, :destroy]

  resources :categories, only: [:show]

  post '/generate', to: 'selections#generate', as: 'generate'
  get '/listview', to: 'selections#listview'
  post '/random', to: 'selections#random', as: 'random'
  get '/pdfview', to: 'selections#pdfview', as: 'pdfview'
end
