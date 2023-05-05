require 'rails_helper'

RSpec.describe 'User', type: :feature do
  scenario 'Show home page' do
    visit root_path
    expect(page).to have_content('Expense_Tracker')
  end

  scenario 'Show sign_up page' do
    visit new_user_registration_path
    expect(page).to have_content('Sign up')
  end

  scenario 'Show sign_in page' do
    visit new_user_session_path
    expect(page).to have_content('Log in')
  end
end
