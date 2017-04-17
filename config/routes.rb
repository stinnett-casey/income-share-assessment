Rails.application.routes.draw do
  post '/submit' => 'submits#index', as: 'submission'

  resources :questions do
    resources :answers
  end
  
  root 'questions#index'
end
