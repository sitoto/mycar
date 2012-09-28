require 'spec_helper'

describe Cpanel::ApplicationController do

  describe "GET 'require_admin'" do
    it "returns http success" do
      get 'require_admin'
      response.should be_success
    end
  end

end
