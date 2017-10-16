Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  resources :albums
  resources :paintings
  resources :posts
  get 'about', to: 'pages#about'

end



