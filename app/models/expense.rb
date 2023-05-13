class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
