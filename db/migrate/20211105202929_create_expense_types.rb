class CreateExpenseTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :expense_types do |t|
      t.string :etype
      t.string :description

      t.timestamps
    end
  end
end
