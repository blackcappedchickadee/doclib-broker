require 'spec_helper'

describe LiferayServiceController do

  describe "GET 'get_version'" do
    it "returns http success" do
      get 'get_version'
      response.should be_success
    end
  end

  describe "GET 'get_file_info'" do
    it "returns http success" do
      get 'get_file_info'
      response.should be_success
    end
  end

end
