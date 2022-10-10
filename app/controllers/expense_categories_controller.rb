class ExpenseCategoriesController < ApplicationController
  def index
    @categories = if params[:category_id]
                    ExpenseCategory.find(params[:category_id]).children
                  else
                    User.first.expense_categories.select(&:root?)
                  end
    @user = current_user
  end
end
