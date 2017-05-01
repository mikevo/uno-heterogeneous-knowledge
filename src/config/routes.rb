Rails.application.routes.draw do
  resources :courses
  get 'admin/users'

  get '/dashboard', to: 'dashboard#index', as: :dashboard

  resources :users, only: [:new, :create]
  get '/users/profile', to: 'users#profile'
  get '/users/password', to: 'users#password'
  put '/users/change_password', to: 'users#change_password'
  put '/users/:id/change_role_to/:role', to: 'users#change_role', as: :users_change_role

  get '/sign_up', to: 'users#new', as: :sign_up

  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_in', to: 'sessions#new', as: :sign_in
  delete '/sign_out', to: 'sessions#destroy', as: :sign_out

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to:'static_pages#contact', as: :contact

  resources :quizzes do
    member do
      get :attempt
      post :result
    end
  end

  get 'quizzes/:id/score', to: 'quizzes#score', as: :quiz_score

  root 'static_pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
