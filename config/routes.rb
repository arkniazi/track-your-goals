# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :alerts
  
  # Goals routes
  resources :goals
  get 'goals/:id/new_sub_goal', to: 'goals#new_sub_goal', as: 'new_sub_goal'
  post 'goals/:id/create_sub_goal', to: 'goals#create_sub_goal', as: 'create_sub_goal'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
