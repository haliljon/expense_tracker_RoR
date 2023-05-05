require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations tests' do
    user = User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')
    category = Category.create(name: 'Food', icon: 'fas fa-utensils', user_id: user.id)
    it 'ensures name presence' do
      category.name = nil
      expect(category.save).to eq(false)
    end

    it 'ensures icon presence' do
      category.icon = nil
      expect(category.save).to eq(false)
    end

    it 'ensures user_id presence' do
      category.user_id = nil
      expect(category.save).to eq(false)
    end
  end
end
