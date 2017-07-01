Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  #get '/reviews', to: 'reviews#index'
  #get '/reviews/new', to: 'reviews#new', as: 'new_review'
  #post '/reviews', to: 'reviews#create'
  #get '/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  #patch '/reviews/:id', to: 'review#update'
  #get 'reviews/:id', to: 'reviews#show', as: 'review'
  #delete '/reviews/:id', to: 'review#destroy'
  
  resources :reviews
end
