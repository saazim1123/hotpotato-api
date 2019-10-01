Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :questions, only: [:index, :show]
      resources :users, only: [:index, :create, :show] do
        resources :questions, except: [:edit]
    end
  
    post '/login', to: 'auth#create'
    get '/validate', to: 'auth#validate_token'
    get '/ranked_users', to: 'users#ranked_users'
    get '/current_user', to: 'auth#show'


    end
  end
    
   

end






























