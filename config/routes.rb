Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about(/:who)', to: 'static_pages#about', as: 'about'
  get 'users/new', to: 'users#new', as: 'register'
  post 'users/new', to: 'users#create', as: 'create_account'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
