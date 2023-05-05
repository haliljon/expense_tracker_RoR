require 'rails_helper'

RSpec.describe 'Expense', type: :feature do
  include Devise::Test::IntegrationHelpers
  before do
    user = User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456', id: 1)
    category = Category.create(name: 'Food', icon: 'fas fa-utensils', user_id: user.id, id: 1)
    # rubocop:disable Lint/UselessAssignment
    expense = Expense.create(name: 'Burger', amount: 10, category_id: category.id, user_id: user.id)
    # rubocop:enable Lint/UselessAssignment

    sign_in user
  end

  scenario 'Show expense page' do
    visit 'categories/1/expenses'
    expect(page).to have_content('Expenses')
  end
end
