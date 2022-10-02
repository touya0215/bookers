Rails.application.routes.draw do
  #get 'books/new' => 'books#new'
  #get '/books' => 'books#index'
  #post '/books' => 'books#show'
  #get 'books/edit' => 'books#edit'
#メンターにより変更
  resources :books





  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end