require 'rails_helper'

RSpec.describe '/', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    user = User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
    sign_in user
  end
  context 'GET /' do
    it 'renders a successful response' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
