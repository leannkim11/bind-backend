Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :jobs, :bookmarks
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/loggedin', to: 'users#logged_in_user'

    end
  end
end
