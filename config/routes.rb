Rails.application.routes.draw do

  get 'events/index'
  get 'abouts/index'

  root 'cars#index'

  devise_for :users, :controllers => {:registrayions => 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :edit, :update]
  resources :cars do
    resource :comments, only: [:create, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  post 'cars/create' => 'cars#create'



  get 'cars/search' => 'cars#search'

  post 'car_years/create' => 'car_years#create'
  post 'car_years/update' => 'car_years#update'

  post 'car_models/create' => 'car_models#create'
  post 'car_models/update' => 'car_models#update'

  post 'manufactures/create' => 'manufactures#create'
  post 'manufactures/destroy' => 'manufactures#destroy'


end
