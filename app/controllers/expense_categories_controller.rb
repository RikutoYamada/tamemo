class ExpenseCategoriesController < ApplicationController
  def index
    @categories = if params[:is_super]
                    User.first.expense_categories.select(&:root?)
                  else
                    User.first.expense_categories.reject(&:root?)
                  end
    @user = current_user
  end
end
