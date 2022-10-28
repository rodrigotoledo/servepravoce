# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  post '/search', to: 'welcome#search', as: :search
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
