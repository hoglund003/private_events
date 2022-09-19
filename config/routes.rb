Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, :path => 'u'
  resources :users
  resources :events do 
    resources :event_attendees, only: [:create, :destroy]
  end

  root "events#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
