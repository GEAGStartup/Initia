Rails.application.routes.draw do
  root to: "logged#show"
  post 'settings' => 'logged#create'
  get 'getPost', to: "logged#getPost"
  post 'getPost' => 'logged#savePostValue'
  get 'logged' , to: "logged#show"
  get 'electricity' , to: "logged#electricity"
  get 'water' , to: "logged#water"
  get 'gas' , to: "logged#gas"
  get 'settings', to:"logged#settings"
  delete 'logged', to: "layouts#application"
  get 'users', to: "users#index"
  get 'insert', to: "logged#insertData"
  post 'insert' => 'logged#insertValuesIntoDB'
  resources :meters
  resources :types
  resources :application
  resources :consumptions
  resources :alerts
  resources :limites


end
