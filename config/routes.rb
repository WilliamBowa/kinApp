Rails.application.routes.draw do
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :carriers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :users, :path_prefix => 'd'
  devise_for :users, :path_prefix => '', path: '', 
              path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  # route for user controler overriding devise            
  resources :users

  root to: 'carriers#index'
end
