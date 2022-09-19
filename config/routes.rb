Rails.application.routes.draw do
  get '/', to: "welcome#index"

  #maybe redirect later to different controller action
  get '/auth/google_oauth2/callback', to: 'users#create'
  get '/reviews/new', to: 'reviews#new'
  post '/reviews/new', to: 'reviews#create'
  # get '/thrones/new', to: 'thrones#new'
  resources :thrones, only: [:new, :show]
  delete 'logout', to: 'users#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
