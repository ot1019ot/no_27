Rails.application.routes.draw do

  get 'admins/index'
  devise_for :admins , controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'registrations'
  }
  resources :admins, only:[:index, :destroy]

  delete 'admins/destroy' => 'admins#destroy'

  get 'abouts/index'

  root 'cars#index'

  devise_for :users, :controllers => {:registrayions => 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :edit, :update, :destroy]
  resources :cars do
    resource :comments, only: [:create, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :events, only:[:index, :new, :create, :edit, :update, :destroy]



  post 'cars/create' => 'cars#create'

  get 'cars/search' => 'cars#set_search'

  post 'car_years/create' => 'car_years#create'
  post 'car_years/update' => 'car_years#update'

  post 'car_models/create' => 'car_models#create'
  post 'car_models/update' => 'car_models#update'

  post 'manufactures/create' => 'manufactures#create'
  post 'manufactures/destroy' => 'manufactures#destroy'


end
