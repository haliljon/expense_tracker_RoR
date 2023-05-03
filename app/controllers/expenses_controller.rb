class ExpensesController < ApplicationController
    def index
        @category = Category.find(params[:category_id])
        @expenses= Expense.where(user: current_user, category_id: @category.id).order(updated_at: :desc)
        @total=Expense.where(user: current_user, category_id: @category.id).sum(:amount)
    end
end