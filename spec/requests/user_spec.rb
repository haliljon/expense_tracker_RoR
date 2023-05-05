require 'rails_helper'

RSpec.describe "User", type: :request do
    describe "GET /user" do
        it "renders sign_in page" do
            get new_user_session_path
            expect(response).to have_http_status(200)
        end

        it "renders sign_up page" do
            get new_user_registration_path
            expect(response).to have_http_status(200)
        end
    end
end