class CreateExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_categories do |t|
      t.integer :user_id
      t.string :name
      t.string :ancestry

      t.timestamps
    end
  end
end
