class AddDetailsToExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :expense_categories, :is_enabled, :boolean
  end
end
