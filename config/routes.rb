DoclibBroker::Application.routes.draw do
  #get "user_session/api"
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :user_session
    end
  end


end
