Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  resources :albums do
    resources :paintings
  end
  resources :posts
  get 'about', to: 'pages#about'
end



