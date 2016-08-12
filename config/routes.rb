Rails.application.routes.draw do
  get 'sessions/new'

  root 'genres#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
    resources :users

    resources :genres do
      resources :movies
  end

    resources :movies do
      member do
        put "like", to: "movies#upvote"
        put "dislike", to: "movies#downvote"
        put "unvote", to: "movies#unvote"
      end
    end
end
