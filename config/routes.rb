Rails.application.routes.draw do
  get 'users/index'

  resources :questions do
    resources :answers, :comments, :votes, shallow: true
  end

  resources :users do
    resources :questions, :answers, :comments, :votes, shallow: true
  end

  root 'user#index'
end
