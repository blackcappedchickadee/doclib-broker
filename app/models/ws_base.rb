class WsBase < ActiveRecord::Base
  attr_accessible :user_id
  
  def initialize(wsdl_service)

      @liferay_server_protocol = Rails.configuration.liferayserverprotocol
      @liferay_server_user = Rails.configuration.liferayserveruser
      @liferay_server_pass = Rails.configuration.liferayserverpass
      @liferay_server_url = Rails.configuration.liferayserverurl
      @liferay_axis_secure = Rails.configuration.liferayaxissecure
      @liferay_wsdl_folder_service = wsdl_service

      @liferay_url = "#{@liferay_server_protocol}#{@liferay_server_user}:#{@liferay_server_pass}@#{@liferay_server_url}#{@liferay_axis_secure}#{@liferay_wsdl_folder_service}?wsdl"

      @client = Savon::Client.new(@liferay_url)

  end
    

    
end
