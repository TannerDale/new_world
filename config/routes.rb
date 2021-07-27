Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/attributes', to: 'attributes#index'
  get '/attributes/:id', to: 'attributes#show'

  get '/weaponstyles', to: 'weaponstyles#index'
  get '/weaponstyles/:id', to: 'weaponstyles#show'

  get '/weapontypes', to: 'weapontypes#index'
  get '/weapontypes/:id', to: 'weapontypes#show'

  get '/weapons', to: 'weapons#index'
  get '/weapons/new', to: 'weapons#new'
  post '/weapons', to: 'weapons#create'
  get 'weapons/:id', to: 'weapons#show'
end
