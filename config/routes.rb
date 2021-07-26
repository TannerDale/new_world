Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/attributes', to: 'attributes#index'
  get '/attributes/:id', to: 'attributes#show'

  get '/weaponstyles', to: 'weaponstyles#index'
end
