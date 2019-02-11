require 'rails_helper'

RSpec.describe 'POST /users/sign_in', type: :request do
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

  context 'when params are correct' do
    before do
      post url, params: params
    end

    it 'returns 201' do
      expect(response).to have_http_status(201)
    end

    it 'returns JTW token in authorization header' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns valid JWT token' do
      expect(response.headers['Authorization'].split.last).not_to be_nil
    end

  end

end
