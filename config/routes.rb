Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/attributes', to: 'attributes#index'
end
