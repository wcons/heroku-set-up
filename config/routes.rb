# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books, except: %i[new edit]
  resources :things
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Books routes
  # get '/books' => 'books#index'
  # delete 'books/:id' => 'books#destroy'
  # patch 'books/:id' => 'books#update'
  # post 'books/' => 'books#create'

  # Auth routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
