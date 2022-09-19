Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  get '/books' => 'books#index'
  post '/books' => 'books#show'
  get 'books/edit' => 'books#edit'

  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end