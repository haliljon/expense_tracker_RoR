require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'validations tests' do
    user = User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
    category = Category.create(name: 'Food', icon: 'fas fa-utensils', user_id: user.id)
    expense = Expense.create(name: 'Burger', amount: 10, category_id: category.id, user_id: user.id)

    it 'ensures name presence' do
      expense.name = nil
      expect(expense.save).to eq(false)
    end

    it 'ensures amount presence' do
      expense.amount = nil
      expect(expense.save).to eq(false)
    end

    it 'ensures category_id presence' do
      expense.category_id = nil
      expect(expense.save).to eq(false)
    end

    it 'ensures user_id presence' do
      expense.user_id = nil
      expect(expense.save).to eq(false)
    end
  end
end
