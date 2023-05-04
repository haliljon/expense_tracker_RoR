class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[index new create]
  def index
    @expenses = Expense.where(user: current_user, category_id: @category.id).order(updated_at: :desc)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user

    respond_to do |format|
      if @expense.save
        format.html { redirect_to category_expenses_path(@category) }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def expense_params
    params.require(:expense).permit(:name, :amount, :category_id)
  end
end
