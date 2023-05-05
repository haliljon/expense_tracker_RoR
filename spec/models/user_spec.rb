require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations tests' do
    user = User.create(full_name: 'Haliljon', email: 'xaliljon1994@gmail.uz', password: '123456')

    it 'ensures full_name presence' do
      user.full_name = nil
      expect(user.save).to eq(false)
    end

    it 'ensures email presence' do
      user.email = nil
      expect(user.save).to eq(false)
    end

    it 'ensures password presence' do
      user.password = nil
      expect(user.save).to eq(false)
    end
  end
end
