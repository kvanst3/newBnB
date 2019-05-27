Rails.application.routes.draw do
  # get 'flats/index'
  # get 'flats/new'
  # get 'flats/create'
  # get 'flats/show'
  # get 'flats/search'
  # get 'flats/edit'
  # get 'flats/update'
  # get 'flats/destroy'
  # get 'dashboards/new'
  # get 'dashboards/create'
  # get 'dashboards/show'
  # get 'dashboards/edit'
  # get 'dashboards/update'
  # get 'dashboards/destroy'
  resources :dashboards
  resources :flats
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
