Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'photos#index'
  get '/upload', to: 'photos#new'
  get '/photos/:id', to: 'photos#show'
  post '/photos', to: 'photos#create'
  patch '/votes/:id', to: 'photos#votes', as: 'votes'

end
