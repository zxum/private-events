Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'

  resources :events do
    get 'attend' #To access the attend_event_path 
    get 'cancel_attend' #To remove attendee from event
  end

  resources :users, only: [:index, :create, :update, :delete, :show]
  resources :sessions
  resources :attendances, only: [:create, :destroy, :update]

  root "events#index"

end
