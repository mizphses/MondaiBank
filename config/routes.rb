Rails.application.routes.draw do
  get 'exporter/questions/:id' => 'exporter#questions'
  patch 'quizzes/quizadd/:id' => 'quizzes#quizadd'
  put 'quizzes/quizadd/:id' => 'quizzes#quizadd'
  resources :quizzes
  get 'quizzes/quizedit/:id' => 'quizzes#quizedit'
  devise_for :users
  root to: "home#index"
  get 'home/index'
  get 'home/about'
  get 'home/tos'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
