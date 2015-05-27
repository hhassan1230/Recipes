Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  
  get '/' => 'recipes#index'

  root "recipes#index"

end
