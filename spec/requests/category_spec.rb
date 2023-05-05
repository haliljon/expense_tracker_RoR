require 'rails_helper'

RSpec.describe 'Category', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    user=User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
    sign_in user
  end
  context 'GET /' do
    it 'redirects to the sign_in page, if user is not logged in' do
      sign_out :user
      get root_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end