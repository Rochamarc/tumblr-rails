Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  root "posts#index"

  #static page
  # now i can access localhost:port/about insted localhost:port/pages/about
  get '/about', to: 'pages#about'
end
