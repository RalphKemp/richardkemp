Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  resources :albums
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'
end
