require 'rails_helper'

RSpec.describe "Category", type: :feature do
    include Devise::Test::IntegrationHelpers
    before do
    user=User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
    sign_in user
    end

    scenario 'Show category page' do
        visit categories_path
        expect(page).to have_content('categories')
    end

    scenario 'Show new category page' do
        visit new_category_path
        expect(page).to have_content('new Category')
    end
end
    