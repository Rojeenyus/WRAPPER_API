Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
Rails.application.routes.draw do
  namespace :api do
    get '/listings', to: 'listings#index'
    get '/exchanges', to: 'exchanges#index'
    get '/blockchains', to: 'blockchains#index'
    get '/tools', to: 'tools#index'
    get '/airdrops', to: 'airdrops#index'
  end
end
