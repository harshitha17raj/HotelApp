Rails.application.routes.draw do
  get 'sessions/new'
<<<<<<< HEAD
  root 'static_pages#home'
=======
  get 'users/new'
  root 'static_pages#home'  
>>>>>>> d810a459bf60867128d482325070112554ad159a
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :users
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
