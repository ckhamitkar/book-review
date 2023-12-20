Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'books/index'
      post 'books/create'
      get '/show/:id', to: 'books#show'
      post 'reviews/create'
      get "search", to: "books#search"
      post "search", to: "books#search"
    end
  end
  
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end