class HomeController < ApplicationController
  def index
    redirect_to new_user_session_path unless user_signed_in?
    # @expenses = Expense.where(user_id: current_user.id)
    # @categories = Category.where(user_id: current_user.id)
  end
end
