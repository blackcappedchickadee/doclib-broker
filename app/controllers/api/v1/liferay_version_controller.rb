module Api
  module V1
    class LiferayVersionController < ApplicationController
      respond_to :json
      
      def index
        liferay_ws_version_service_name = Rails.configuration.liferaywsdlgetversionservice
        liferay_ws_version = WsVersion.new(liferay_ws_version_service_name)
        @liferay_version_response = liferay_ws_version.get_version.to_hash[:get_version_response]
        
        
        
      end
      
    end
  end
end
