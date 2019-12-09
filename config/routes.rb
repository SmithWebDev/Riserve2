Rails.application.routes.draw do
  root 'home#index'
  # get 'home/about'
  get 'about'=> 'home#about'
  post '/' => 'home#index'
end
