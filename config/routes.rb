Rails.application.routes.draw do
  get 'users/new'
  root to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about(/:who)', to: 'static_pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
