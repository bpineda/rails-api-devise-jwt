require 'rails_helper'
require 'devise/jwt/test_helpers'

RSpec.describe DestinationsController, type: :request do

  describe "GET #index" do
    let(:user) { Fabricate(:user) }
    let(:url) { '/users/sign_in' }
    let(:params) do
      {
        user: {
          email: user.email,
          password: user.password
        }
      }
    end

    it "returns 302" do
      get destinations_path
      expect(response).to have_http_status(302)
    end
    
    it 'returns 200' do
      headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

      get destinations_path, headers: auth_headers
      expect(response).to have_http_status(200)
      
    end
  end

end
