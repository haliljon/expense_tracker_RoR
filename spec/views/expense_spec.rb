require 'rails_helper'

RSpec.describe "Expense", type: :feature do
    include Devise::Test::IntegrationHelpers
    before do
        user=User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
        category=Category.create(name: 'Food', icon: 'fas fa-utensils', user_id: 1)
        expense=Expense.create(name: 'Burger', amount: 10, category_id: 1, user_id: 1)
        sign_in user
    end 

    scenario 'Show expense page' do
        visit 'categories/1/expenses'
        expect(page).to have_content('Expenses')
    end
end