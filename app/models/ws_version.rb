class WsVersion < WsBase
  attr_accessible :user_id
  
  def get_version
      begin
         response = @client.request :get_version, body: { }
         if response.success?
           return response
         end
      rescue Savon::Error => error
        Rails.logger.warn.to_s
        return "{error}"
      end
  end
  
end
