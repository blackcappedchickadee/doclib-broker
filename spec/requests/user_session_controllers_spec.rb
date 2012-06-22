require 'spec_helper'

module Api 
  module V1 
    describe "UserSessionControllers" do
      describe "GET /user_session_controllers" do
        it "should return some data" do
          # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
          user_session = FactoryGirl.create(:user_session) #this user session
          #get api_v1_user_session_index_path, :format => "json"
          
          get :index, :user_id => user_session.user_id, :format => "json"
          response.status.should be_success 
          
          body = JSON.parse(response.body)
          
          
        end
      end
    end 
  end
end
