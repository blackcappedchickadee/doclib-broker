DoclibBroker::Application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do

      resources :liferay_version
      
    end
  end


end
