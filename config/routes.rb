Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/attributes', to: 'attributes#index'
  get '/attributes/:id', to: 'attributes#show'

  get '/weaponstyles', to: 'weaponstyles#index'
  get '/weaponstyles/:id', to: 'weaponstyles#show'

  get '/weapontypes', to: 'weapontypes#index'
  get '/weapontypes/:id', to: 'weapontypes#show'

  get '/weapons', to: 'weapons#index'
end
