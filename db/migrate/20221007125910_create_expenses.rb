class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :store
      t.integer :amount
      t.date :expended_at

      t.timestamps
    end
  end
end
