class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    Expense.create(expense_params)
    redirect_to root_path
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :store, :expended_at).merge(user_id: current_user.id, category_id: params[:category_id])
  end
end
