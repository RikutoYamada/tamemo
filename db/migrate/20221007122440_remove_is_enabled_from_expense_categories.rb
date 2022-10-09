class RemoveIsEnabledFromExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :expense_categories, :is_enabled, :string
  end
end
