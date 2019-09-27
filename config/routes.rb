Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :questions, only: [:index, :show]
    resources :users do
      resources :questions, except: [:edit]
    end

    # post '/auth', to: 'auth#create'
    get '/ranked_users', to: 'users#ranked_users'
    # get '/current_user', to:

end






























