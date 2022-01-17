Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecast#show'
      get '/image', to: 'image#show'
      post '/users', to: 'users#create'
    end
  end
end
