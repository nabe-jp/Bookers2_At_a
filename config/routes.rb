Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show]
  get  'homes/about', to: 'homes#about', as: 'about'
end
