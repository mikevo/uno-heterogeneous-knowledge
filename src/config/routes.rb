Rails.application.routes.draw do
  get '/dashboard', to: 'dashboard#index', as: :dashboard

  resources :users, only: [:new, :create]
  get '/sign_up', to: 'users#new', as: :sign_up

  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_in', to: 'sessions#new', as: :sign_in
  delete '/sign_out', to: 'sessions#destroy', as: :sign_out

  get '/course', to: 'course#index', as: :course
  get '/quiz', to: 'quiz#index', as: :quiz
  get '/quiz/new', to: 'quiz#new', as: :new_quiz

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
